class SessionsController < ActionController::API
  before_action :verify_ip_address
  before_action :authenticate_request
  before_action :authorize_request, only: [:authorize]

  def authenticate
    head :ok
  end

  def authorize
    head :ok
  end

  private

  def verify_ip_address
    @@disallowed_ip_addresses ||= ENV['DISALLOW_IP'].to_s.split - ENV['ALLOW_IP'].to_s.split
    @@allowed_ip_addresses ||= ENV['ALLOW_IP'].to_s.split - ENV['DISALLOW_IP'].to_s.split
    head :forbidden if @@disallowed_ip_addresses.include?(request.remote_ip)
    head :forbidden if @@allowed_ip_addresses.present? && !@@allowed_ip_addresses.include?(request.remote_ip)
  end

  def authenticate_request
    head :unauthorized if safe_compare(ENV["AUTHN_TOKEN"], ENV["AUTHN_HEADER"])
  end

  def authorize_request
    head :forbidden if safe_compare(ENV["AUTHZ_TOKEN"], ENV["AUTHZ_HEADER"])
  end

  def check_maintenance
    @@maintenance_message ||= ENV['MAINTENANCE_MESSAGE']
    if Config::MAINTENANCE_MODE
      render json: {
        error: @@maintenance_message
      }, status: :service_unavailable
    end
  end

  def safe_compare(token, header)
    token = token.to_s
    header = header.to_s
    return false if token.blank?
    provided_token = (request.headers[header] || params[header]).to_s
    token.split.each do |value|
      return false if ActiveSupport::SecurityUtils.secure_compare(value, provided_token)
    end
    true
  end
end
