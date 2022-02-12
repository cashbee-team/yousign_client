# frozen_string_literal: true

# #Yousign API Swagger
#
# For your information, the Yousign API documentation is available at https://dev.yousign.com/
#
# The version of the OpenAPI document: 2.1
# Contact: support@yousign.fr
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.4.0
#

require 'spec_helper'

describe YousignClient::Configuration do
  let(:config) { YousignClient::Configuration.default }

  describe '#base_url' do
    it 'has the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.yousign.com")
    end

    it 'removes trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.yousign.com")
      end
    end
  end
end
