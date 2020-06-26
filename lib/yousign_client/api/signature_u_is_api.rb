=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module YousignClient
  class SignatureUIsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Signature UI Labels
    # Only usefull if you use a filter with name or signatureUI
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filtering on name of signature ui labels
    # @option opts [String] :signature_ui Filtering on id of signature ui resource
    # @return [Array<SignatureUiLabelOutput>]
    def signature_ui_labels_get(authorization, opts = {})
      data, _status_code, _headers = signature_ui_labels_get_with_http_info(authorization, opts)
      data
    end

    # Get Signature UI Labels
    # Only usefull if you use a filter with name or signatureUI
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filtering on name of signature ui labels
    # @option opts [String] :signature_ui Filtering on id of signature ui resource
    # @return [Array<(Array<SignatureUiLabelOutput>, Fixnum, Hash)>] Array<SignatureUiLabelOutput> data, response status code and response headers
    def signature_ui_labels_get_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_ui_labels_get"
      end
      # resource path
      local_var_path = '/signature_ui_labels'

      # query parameters
      query_params = {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'signatureUi'] = opts[:'signature_ui'] if !opts[:'signature_ui'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SignatureUiLabelOutput>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Signature UI Label
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui label
    # @return [nil]
    def signature_ui_labels_id_delete(id, authorization, opts = {})
      signature_ui_labels_id_delete_with_http_info(id, authorization, opts)
      nil
    end

    # Delete a Signature UI Label
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui label
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def signature_ui_labels_id_delete_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_ui_labels_id_delete"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_ui_labels_id_delete"
      end
      # resource path
      local_var_path = '/signature_ui_labels/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id2'] if !opts[:'id2'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find a Signature UI Label by ID
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui label
    # @return [SignatureUiLabelOutput]
    def signature_ui_labels_id_get(id, authorization, opts = {})
      data, _status_code, _headers = signature_ui_labels_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Find a Signature UI Label by ID
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui label
    # @return [Array<(SignatureUiLabelOutput, Fixnum, Hash)>] SignatureUiLabelOutput data, response status code and response headers
    def signature_ui_labels_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_ui_labels_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_ui_labels_id_get"
      end
      # resource path
      local_var_path = '/signature_ui_labels/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id2'] if !opts[:'id2'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureUiLabelOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Signature UI Label
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui labels
    # @return [SignatureUiLabelOutput]
    def signature_ui_labels_id_put(id, authorization, content_type, body, opts = {})
      data, _status_code, _headers = signature_ui_labels_id_put_with_http_info(id, authorization, content_type, body, opts)
      data
    end

    # Update a Signature UI Label
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui labels
    # @return [Array<(SignatureUiLabelOutput, Fixnum, Hash)>] SignatureUiLabelOutput data, response status code and response headers
    def signature_ui_labels_id_put_with_http_info(id, authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_ui_labels_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_ui_labels_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SignatureUIsApi.signature_ui_labels_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SignatureUIsApi.signature_ui_labels_id_put"
      end
      # resource path
      local_var_path = '/signature_ui_labels/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id2'] if !opts[:'id2'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureUiLabelOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Signature UI Label
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [SignatureUiLabelOutput]
    def signature_ui_labels_post(authorization, content_type, body, opts = {})
      data, _status_code, _headers = signature_ui_labels_post_with_http_info(authorization, content_type, body, opts)
      data
    end

    # Create a new Signature UI Label
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureUiLabelOutput, Fixnum, Hash)>] SignatureUiLabelOutput data, response status code and response headers
    def signature_ui_labels_post_with_http_info(authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_ui_labels_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SignatureUIsApi.signature_ui_labels_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SignatureUIsApi.signature_ui_labels_post"
      end
      # resource path
      local_var_path = '/signature_ui_labels'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureUiLabelOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Signature UI list
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<SignatureUiOutput>]
    def signature_uis_get(authorization, opts = {})
      data, _status_code, _headers = signature_uis_get_with_http_info(authorization, opts)
      data
    end

    # Get Signature UI list
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SignatureUiOutput>, Fixnum, Hash)>] Array<SignatureUiOutput> data, response status code and response headers
    def signature_uis_get_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_uis_get"
      end
      # resource path
      local_var_path = '/signature_uis'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SignatureUiOutput>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Signature UI
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of the signature ui
    # @return [nil]
    def signature_uis_id_delete(id, authorization, content_type, opts = {})
      signature_uis_id_delete_with_http_info(id, authorization, content_type, opts)
      nil
    end

    # Delete a Signature UI
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of the signature ui
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def signature_uis_id_delete_with_http_info(id, authorization, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_uis_id_delete"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_uis_id_delete"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SignatureUIsApi.signature_uis_id_delete"
      end
      # resource path
      local_var_path = '/signature_uis/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id2'] if !opts[:'id2'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find a Signature UI by ID
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of a signature ui
    # @return [SignatureUiOutput]
    def signature_uis_id_get(id, authorization, content_type, opts = {})
      data, _status_code, _headers = signature_uis_id_get_with_http_info(id, authorization, content_type, opts)
      data
    end

    # Find a Signature UI by ID
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of a signature ui
    # @return [Array<(SignatureUiOutput, Fixnum, Hash)>] SignatureUiOutput data, response status code and response headers
    def signature_uis_id_get_with_http_info(id, authorization, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_uis_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_uis_id_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SignatureUIsApi.signature_uis_id_get"
      end
      # resource path
      local_var_path = '/signature_uis/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id2'] if !opts[:'id2'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureUiOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Signature UI
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui to update
    # @return [SignatureUiInputUpdate]
    def signature_uis_id_put(id, authorization, content_type, opts = {})
      data, _status_code, _headers = signature_uis_id_put_with_http_info(id, authorization, content_type, opts)
      data
    end

    # Update a Signature UI
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui to update
    # @return [Array<(SignatureUiInputUpdate, Fixnum, Hash)>] SignatureUiInputUpdate data, response status code and response headers
    def signature_uis_id_put_with_http_info(id, authorization, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_uis_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_uis_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SignatureUIsApi.signature_uis_id_put"
      end
      # resource path
      local_var_path = '/signature_uis/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id2'] if !opts[:'id2'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureUiInputUpdate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Signature UI
    # Here is the url format to build on your side to get a custom signature interface with your settings :  https://webapp.yousign.com/procedure/sign?members=~2Fmembers~2F__MEMBER_ID__&signatureUi=~2Fsignature_uis~2F__SIGNATURE_UI_ID__
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [SignatureUiOutput]
    def signature_uis_post(authorization, content_type, body, opts = {})
      data, _status_code, _headers = signature_uis_post_with_http_info(authorization, content_type, body, opts)
      data
    end

    # Create a new Signature UI
    # Here is the url format to build on your side to get a custom signature interface with your settings :  https://webapp.yousign.com/procedure/sign?members&#x3D;~2Fmembers~2F__MEMBER_ID__&amp;signatureUi&#x3D;~2Fsignature_uis~2F__SIGNATURE_UI_ID__
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureUiOutput, Fixnum, Hash)>] SignatureUiOutput data, response status code and response headers
    def signature_uis_post_with_http_info(authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling SignatureUIsApi.signature_uis_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SignatureUIsApi.signature_uis_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SignatureUIsApi.signature_uis_post"
      end
      # resource path
      local_var_path = '/signature_uis'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignatureUiOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end