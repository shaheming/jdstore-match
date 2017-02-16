require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
 if Rails.env.production?
    
	# config.fog_provider = 'fog/aws'
	config.fog_credentials={
		provider: "AWS",
		aws_access_key_id: ENV["AKIAI7YIASLFR66HZSPA"],

		aws_secret_access_key: ENV["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"],

		region: 'us-west-2'

	} 	
	config.storage :fog
	config.fog_directory = ENV["fullstack-sand"]
 else
 	config.storage :file
 end
end
