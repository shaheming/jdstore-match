require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
 if Rails.env.production?
    
	# config.fog_provider = 'fog/aws'
	config.fog_credentials={
		provider: "AWS",
		aws_access_key_id: ENV["AKIAJCLVC5FFFLDXMTHQ"],

		aws_secret_access_key: ENV["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"],

		region: 'ap-northeast-1'

	} 	
	config.storage :fog
	config.fog_directory = ENV["fullstack-sand"]
 else
 	config.storage :file
 end
end
