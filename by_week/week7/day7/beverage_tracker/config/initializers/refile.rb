require "refile/s3"

aws = {
  access_key_id: ENV["s3_access_key"],
  secret_access_key: ENV["s3_secret_key"],
  region: ENV["s3_region"],
  bucket: ENV["s3_bucket"]
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
