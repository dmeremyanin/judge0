Resque.redis = Redis.new(
  host:     ENV["REDIS_HOST"],
  port:     ENV["REDIS_PORT"],
  username: ENV["REDIS_USERNAME"],
  password: ENV["REDIS_PASSWORD"],
  thread_safe: true
)
