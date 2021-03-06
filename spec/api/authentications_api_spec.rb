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

# Unit tests for YousignClient::AuthenticationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationsApi' do
  before do
    # run before each test
    @instance = YousignClient::AuthenticationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationsApi' do
    it 'should create an instance of AuthenticationsApi' do
      expect(@instance).to be_instance_of(YousignClient::AuthenticationsApi)
    end
  end

  # unit tests for authentications_email_id_get
  # Find an Authentication by ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationEmailOutput]
  describe 'authentications_email_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for authentications_email_id_put
  # Update an Email Authentication
  # @param id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationEmailOutput]
  describe 'authentications_email_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for authentications_inwebo_id_get
  # Get an Authentication
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationInweboOutput]
  describe 'authentications_inwebo_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for authentications_inwebo_id_put
  # Update an inwebo Authentication
  # @param id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationInweboOutput]
  describe 'authentications_inwebo_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for authentications_sms_id_get
  # Find an Authentication by ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationSmsOutput]
  describe 'authentications_sms_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for authentications_sms_id_put
  # Update an SMS Authentication
  # @param id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [AuthenticationSmsOutput]
  describe 'authentications_sms_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
