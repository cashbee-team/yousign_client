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
require 'json'
require 'date'

# Unit tests for YousignClient::MemberOutput
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe YousignClient::MemberOutput do
  let(:instance) { YousignClient::MemberOutput.new }

  describe 'test an instance of MemberOutput' do
    it 'creates an instance of MemberOutput' do
      expect(instance).to be_instance_of(YousignClient::MemberOutput)
    end
  end

  describe 'test attribute "id"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["signer", "validator"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "firstname"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lastname"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "email"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "phone"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "position"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_at"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "updated_at"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["pending", "processing", "done", "refused"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "file_objects"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "comment"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "procedure"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "operation_level"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["none", "custom", "advanced"])
      # validator.allowable_values.each do |value|
      #   expect { instance.operation_level = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "operation_custom_modes"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["sms", "inwebo", "email"])
      # validator.allowable_values.each do |value|
      #   expect { instance.operation_custom_modes = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "mode_sms_configuration"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
