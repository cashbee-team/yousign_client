=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for YousignClient::ProcedureInputMetadata
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProcedureInputMetadata' do
  before do
    # run before each test
    @instance = YousignClient::ProcedureInputMetadata.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProcedureInputMetadata' do
    it 'should create an instance of ProcedureInputMetadata' do
      expect(@instance).to be_instance_of(YousignClient::ProcedureInputMetadata)
    end
  end
  describe 'test attribute "key1"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key2"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
