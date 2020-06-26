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
  class ConsentProcessesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get list of Consent Process Value
    # @param member [String] id of member
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [ConsentProcessValueOutput]
    def consent_process_values_get(member, authorization, opts = {})
      data, _status_code, _headers = consent_process_values_get_with_http_info(member, authorization, opts)
      data
    end

    # Get list of Consent Process Value
    # @param member [String] id of member
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsentProcessValueOutput, Integer, Hash)>] ConsentProcessValueOutput data, response status code and response headers
    def consent_process_values_get_with_http_info(member, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_process_values_get ...'
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling ConsentProcessesApi.consent_process_values_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_process_values_get"
      end
      # resource path
      local_var_path = '/consent_process_values'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'member'] = member

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
      return_type = opts[:return_type] || 'ConsentProcessValueOutput' 

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
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_process_values_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Consent Process Value
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member id of member (required for anonymous)
    # @return [ConsentProcessValueOutput]
    def consent_process_values_id_get(id, authorization, opts = {})
      data, _status_code, _headers = consent_process_values_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Get a Consent Process Value
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member id of member (required for anonymous)
    # @return [Array<(ConsentProcessValueOutput, Integer, Hash)>] ConsentProcessValueOutput data, response status code and response headers
    def consent_process_values_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_process_values_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConsentProcessesApi.consent_process_values_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_process_values_id_get"
      end
      # resource path
      local_var_path = '/consent_process_values/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'member'] = opts[:'member'] if !opts[:'member'].nil?

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
      return_type = opts[:return_type] || 'ConsentProcessValueOutput' 

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
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_process_values_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new Consent Process Value
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [ConsentProcessValueInput] 
    # @param [Hash] opts the optional parameters
    # @return [ConsentProcessValueOutput]
    def consent_process_values_post(authorization, content_type, body, opts = {})
      data, _status_code, _headers = consent_process_values_post_with_http_info(authorization, content_type, body, opts)
      data
    end

    # Create a new Consent Process Value
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [ConsentProcessValueInput] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsentProcessValueOutput, Integer, Hash)>] ConsentProcessValueOutput data, response status code and response headers
    def consent_process_values_post_with_http_info(authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_process_values_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_process_values_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ConsentProcessesApi.consent_process_values_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConsentProcessesApi.consent_process_values_post"
      end
      # resource path
      local_var_path = '/consent_process_values'

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
      return_type = opts[:return_type] || 'ConsentProcessValueOutput' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_process_values_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of Consent Processes
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member id of member (required for anonymous)
    # @option opts [String] :procedure id of procedure (required if the member attribut is not set)
    # @return [Array<ConsentProcessOutput>]
    def consent_processes_get(authorization, opts = {})
      data, _status_code, _headers = consent_processes_get_with_http_info(authorization, opts)
      data
    end

    # Get list of Consent Processes
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member id of member (required for anonymous)
    # @option opts [String] :procedure id of procedure (required if the member attribut is not set)
    # @return [Array<(Array<ConsentProcessOutput>, Integer, Hash)>] Array<ConsentProcessOutput> data, response status code and response headers
    def consent_processes_get_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_processes_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_processes_get"
      end
      # resource path
      local_var_path = '/consent_processes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'member'] = opts[:'member'] if !opts[:'member'].nil?
      query_params[:'procedure'] = opts[:'procedure'] if !opts[:'procedure'].nil?

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
      return_type = opts[:return_type] || 'Array<ConsentProcessOutput>' 

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
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_processes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Consent Process
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def consent_processes_id_delete(id, authorization, opts = {})
      consent_processes_id_delete_with_http_info(id, authorization, opts)
      nil
    end

    # Delete a Consent Process
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def consent_processes_id_delete_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_processes_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConsentProcessesApi.consent_processes_id_delete"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_processes_id_delete"
      end
      # resource path
      local_var_path = '/consent_processes/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_processes_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Consent Process
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member id of member (required for anonymous)
    # @return [ConsentProcessOutput]
    def consent_processes_id_get(id, authorization, opts = {})
      data, _status_code, _headers = consent_processes_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Get a Consent Process
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member id of member (required for anonymous)
    # @return [Array<(ConsentProcessOutput, Integer, Hash)>] ConsentProcessOutput data, response status code and response headers
    def consent_processes_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_processes_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConsentProcessesApi.consent_processes_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_processes_id_get"
      end
      # resource path
      local_var_path = '/consent_processes/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'member'] = opts[:'member'] if !opts[:'member'].nil?

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
      return_type = opts[:return_type] || 'ConsentProcessOutput' 

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
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_processes_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Consent Process
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [ConsentProcessInput] 
    # @param [Hash] opts the optional parameters
    # @return [ConsentProcessOutput]
    def consent_processes_id_put(id, authorization, content_type, body, opts = {})
      data, _status_code, _headers = consent_processes_id_put_with_http_info(id, authorization, content_type, body, opts)
      data
    end

    # Update a Consent Process
    # @param id [String] 
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [ConsentProcessInput] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsentProcessOutput, Integer, Hash)>] ConsentProcessOutput data, response status code and response headers
    def consent_processes_id_put_with_http_info(id, authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_processes_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConsentProcessesApi.consent_processes_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_processes_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ConsentProcessesApi.consent_processes_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConsentProcessesApi.consent_processes_id_put"
      end
      # resource path
      local_var_path = '/consent_processes/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'ConsentProcessOutput' 

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
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_processes_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new Consent Process
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [ConsentProcessInput] 
    # @param [Hash] opts the optional parameters
    # @return [ConsentProcessOutput]
    def consent_processes_post(authorization, content_type, body, opts = {})
      data, _status_code, _headers = consent_processes_post_with_http_info(authorization, content_type, body, opts)
      data
    end

    # Create a new Consent Process
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param content_type [String] The MIME type of the body of the request
    # @param body [ConsentProcessInput] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConsentProcessOutput, Integer, Hash)>] ConsentProcessOutput data, response status code and response headers
    def consent_processes_post_with_http_info(authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConsentProcessesApi.consent_processes_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ConsentProcessesApi.consent_processes_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ConsentProcessesApi.consent_processes_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ConsentProcessesApi.consent_processes_post"
      end
      # resource path
      local_var_path = '/consent_processes'

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
      return_type = opts[:return_type] || 'ConsentProcessOutput' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConsentProcessesApi#consent_processes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
