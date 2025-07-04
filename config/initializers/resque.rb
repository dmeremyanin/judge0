Resque.redis = Redis.new(
  host:     ENV["REDIS_HOST"],
  port:     ENV["REDIS_PORT"],
  username: ENV["REDIS_USERNAME"],
  password: ENV["REDIS_PASSWORD"]
)

# Workaround for:
# https://github.com/judge0/judge0/issues/542
#
# Resque feature (not required in our case): https://github.com/resque/resque/pull/1803
# Since we don't use this functionality, we remove it for now.
class Resque::Worker
  def paused?
    @paused
  end
end
