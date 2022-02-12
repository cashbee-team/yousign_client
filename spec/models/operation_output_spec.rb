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

# Unit tests for YousignClient::OperationOutput
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe YousignClient::OperationOutput do
  let(:instance) { YousignClient::OperationOutput.new }

  describe 'test an instance of OperationOutput' do
    it 'creates an instance of OperationOutput' do
      expect(instance).to be_instance_of(YousignClient::OperationOutput)
    end
  end

  describe 'test attribute "id"' do
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

  describe 'test attribute "authentication"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "mode"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["sms", "inwebo", "email"])
      # validator.allowable_values.each do |value|
      #   expect { instance.mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "status"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["pending", "done", "error"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "type"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["accept", "refuse"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "metadata"' do
    it 'works' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
