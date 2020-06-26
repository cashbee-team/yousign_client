=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

The version of the OpenAPI document: 2.1
Contact: support@yousign.fr
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module YousignClient
  class AuthenticationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find an Authentication by ID
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationEmailOutput]
    def authentications_email_id_get(id, authorization, opts = {})
      data, _status_code, _headers = authentications_email_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Find an Authentication by ID
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationEmailOutput, Integer, Hash)>] AuthenticationEmailOutput data, response status code and response headers
    def authentications_email_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationsApi.authentications_email_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthenticationsApi.authentications_email_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling AuthenticationsApi.authentications_email_id_get"
      end
      # resource path
      local_var_path = '/authentications/email/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AuthenticationEmailOutput' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationsApi#authentications_email_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an Email Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [InlineObject2] 
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationEmailOutput]
    def authentications_email_id_put(id, authorization, content_type, body, opts = {})
      data, _status_code, _headers = authentications_email_id_put_with_http_info(id, authorization, content_type, body, opts)
      data
    end

    # Update an Email Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [InlineObject2] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationEmailOutput, Integer, Hash)>] AuthenticationEmailOutput data, response status code and response headers
    def authentications_email_id_put_with_http_info(id, authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationsApi.authentications_email_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthenticationsApi.authentications_email_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling AuthenticationsApi.authentications_email_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling AuthenticationsApi.authentications_email_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticationsApi.authentications_email_id_put"
      end
      # resource path
      local_var_path = '/authentications/email/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'AuthenticationEmailOutput' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationsApi#authentications_email_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationInweboOutput]
    def authentications_inwebo_id_get(id, authorization, opts = {})
      data, _status_code, _headers = authentications_inwebo_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Get an Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationInweboOutput, Integer, Hash)>] AuthenticationInweboOutput data, response status code and response headers
    def authentications_inwebo_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationsApi.authentications_inwebo_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthenticationsApi.authentications_inwebo_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling AuthenticationsApi.authentications_inwebo_id_get"
      end
      # resource path
      local_var_path = '/authentications/inwebo/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AuthenticationInweboOutput' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationsApi#authentications_inwebo_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an inwebo Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationInweboOutput]
    def authentications_inwebo_id_put(id, authorization, content_type, body, opts = {})
      data, _status_code, _headers = authentications_inwebo_id_put_with_http_info(id, authorization, content_type, body, opts)
      data
    end

    # Update an inwebo Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationInweboOutput, Integer, Hash)>] AuthenticationInweboOutput data, response status code and response headers
    def authentications_inwebo_id_put_with_http_info(id, authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationsApi.authentications_inwebo_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthenticationsApi.authentications_inwebo_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling AuthenticationsApi.authentications_inwebo_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling AuthenticationsApi.authentications_inwebo_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticationsApi.authentications_inwebo_id_put"
      end
      # resource path
      local_var_path = '/authentications/inwebo/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'AuthenticationInweboOutput' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationsApi#authentications_inwebo_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find an Authentication by ID
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationSmsOutput]
    def authentications_sms_id_get(id, authorization, opts = {})
      data, _status_code, _headers = authentications_sms_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Find an Authentication by ID
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationSmsOutput, Integer, Hash)>] AuthenticationSmsOutput data, response status code and response headers
    def authentications_sms_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationsApi.authentications_sms_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthenticationsApi.authentications_sms_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling AuthenticationsApi.authentications_sms_id_get"
      end
      # resource path
      local_var_path = '/authentications/sms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'AuthenticationSmsOutput' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationsApi#authentications_sms_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an SMS Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [InlineObject1] 
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationSmsOutput]
    def authentications_sms_id_put(id, authorization, content_type, body, opts = {})
      data, _status_code, _headers = authentications_sms_id_put_with_http_info(id, authorization, content_type, body, opts)
      data
    end

    # Update an SMS Authentication
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [InlineObject1] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationSmsOutput, Integer, Hash)>] AuthenticationSmsOutput data, response status code and response headers
    def authentications_sms_id_put_with_http_info(id, authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationsApi.authentications_sms_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthenticationsApi.authentications_sms_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling AuthenticationsApi.authentications_sms_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling AuthenticationsApi.authentications_sms_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthenticationsApi.authentications_sms_id_put"
      end
      # resource path
      local_var_path = '/authentications/sms/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'AuthenticationSmsOutput' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationsApi#authentications_sms_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
