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

# Unit tests for YousignClient::MembersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MembersApi' do
  before do
    # run before each test
    @instance = YousignClient::MembersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MembersApi' do
    it 'should create an instance of MembersApi' do
      expect(@instance).to be_instance_of(YousignClient::MembersApi)
    end
  end

  # unit tests for members_get
  # Get all Members
  # Returns the list of Members of a organization. It only usefull if you use the query params named \&quot;procedure\&quot; for retrieve all members of a procedure.
  # @param authorization Authentication credentials for HTTP authentication
  # @param [Hash] opts the optional parameters
  # @option opts [String] :procedure 
  # @return [Array<MemberOutput>]
  describe 'members_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for members_id_delete
  # Delete a Member
  # Delete a member
  # @param id 
  # @param authorization Authentication credentials for HTTP authentication
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'members_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for members_id_proof_get
  # Get a proof file of a Member
  # Get a proof file of a member
  # @param id 
  # @param authorization Authentication credentials for HTTP authentication
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'members_id_proof_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for members_id_put
  # Edit a Member
  # Edit a member
  # @param id 
  # @param authorization Authentication credentials for HTTP authentication
  # @param content_type The MIME type of the body of the request
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MemberOutput]
  describe 'members_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for members_post
  # Create a new Member
  # Create a new member
  # @param authorization Authentication credentials for HTTP authentication
  # @param content_type The MIME type of the body of the request
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [MemberOutput]
  describe 'members_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end