require "refile"

Refile.configure do |config|
  config.store = Refile::Postgres::Backend.new(proc { ActiveRecord::Base.connection.raw_connection } )
end

aws = {
  access_key_id: ENV['access_key_id'],
  secret_access_key: ENV['secret_access_key'],
  region: ENV['region'],
  bucket: ENV['bucket'],
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
