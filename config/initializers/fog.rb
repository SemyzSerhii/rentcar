CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['s3_key'],
    aws_secret_access_key: ENV['s3_secret'],
    region:                ENV['S3_region'],
  }
  config.fog_directory  = ENV['s3_bucket']
  config.fog_public     = false
end