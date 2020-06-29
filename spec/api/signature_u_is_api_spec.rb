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

# Unit tests for YousignClient::SignatureUIsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignatureUIsApi' do
  before do
    # run before each test
    @instance = YousignClient::SignatureUIsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignatureUIsApi' do
    it 'should create an instance of SignatureUIsApi' do
      expect(@instance).to be_instance_of(YousignClient::SignatureUIsApi)
    end
  end

  # unit tests for signature_ui_labels_get
  # Get Signature UI Labels
  # Only usefull if you use a filter with name or signatureUI
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Filtering on name of signature ui labels
  # @option opts [String] :signature_ui Filtering on id of signature ui resource
  # @return [Array<SignatureUiLabelOutput>]
  describe 'signature_ui_labels_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_ui_labels_id_delete
  # Delete a Signature UI Label
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id2 Id of signature ui label
  # @return [nil]
  describe 'signature_ui_labels_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_ui_labels_id_get
  # Find a Signature UI Label by ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id2 id of signature ui label
  # @return [SignatureUiLabelOutput]
  describe 'signature_ui_labels_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_ui_labels_id_put
  # Update a Signature UI Label
  # @param id 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id2 Id of signature ui labels
  # @return [SignatureUiLabelOutput]
  describe 'signature_ui_labels_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_ui_labels_post
  # Create a new Signature UI Label
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SignatureUiLabelOutput]
  describe 'signature_ui_labels_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_uis_get
  # Get Signature UI list
  # @param [Hash] opts the optional parameters
  # @return [Array<SignatureUiOutput>]
  describe 'signature_uis_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_uis_id_delete
  # Delete a Signature UI
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id2 Id of the signature ui
  # @return [nil]
  describe 'signature_uis_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_uis_id_get
  # Find a Signature UI by ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id2 id of a signature ui
  # @return [SignatureUiOutput]
  describe 'signature_uis_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_uis_id_put
  # Update a Signature UI
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id2 id of signature ui to update
  # @return [SignatureUiInputUpdate]
  describe 'signature_uis_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for signature_uis_post
  # Create a new Signature UI
  # Here is the url format to build on your side to get a custom signature interface with your settings :  https://webapp.yousign.com/procedure/sign?members&#x3D;~2Fmembers~2F__MEMBER_ID__&amp;signatureUi&#x3D;~2Fsignature_uis~2F__SIGNATURE_UI_ID__
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [SignatureUiOutput]
  describe 'signature_uis_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
