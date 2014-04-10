AWS_S3_ASSETS_BUCKET = 'zendrop-assets'

CarrierWave.configure do |config|

  config.fog_credentials = {
    provider: 'AWS',

    # Credentials for flipt_web_uploader account
    aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
  }

  # To enable CarrierWave to work on read-only Heroku file system
  config.cache_dir = "#{Rails.root}/tmp/uploads"

  config.fog_directory = AWS_S3_ASSETS_BUCKET

  config.fog_public = true
end

AWS_S3_ASSETS_BASE_URL = "https://#{AWS_S3_ASSETS_BUCKET}.s3.amazonaws.com"
