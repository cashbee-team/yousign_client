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
  class ServerStampsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find a Server Stamp by ID
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [ServerStampOutput]
    def server_stamps_id_get(id, authorization, opts = {})
      data, _status_code, _headers = server_stamps_id_get_with_http_info(id, authorization, opts)
      data
    end

    # Find a Server Stamp by ID
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServerStampOutput, Fixnum, Hash)>] ServerStampOutput data, response status code and response headers
    def server_stamps_id_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerStampsApi.server_stamps_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServerStampsApi.server_stamps_id_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServerStampsApi.server_stamps_id_get"
      end
      # resource path
      local_var_path = '/server_stamps/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ServerStampOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerStampsApi#server_stamps_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a Server Stamp
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ServerStampOutput]
    def server_stamps_post(authorization, content_type, body, opts = {})
      data, _status_code, _headers = server_stamps_post_with_http_info(authorization, content_type, body, opts)
      data
    end

    # Create a Server Stamp
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServerStampOutput, Fixnum, Hash)>] ServerStampOutput data, response status code and response headers
    def server_stamps_post_with_http_info(authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerStampsApi.server_stamps_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling ServerStampsApi.server_stamps_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ServerStampsApi.server_stamps_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServerStampsApi.server_stamps_post"
      end
      # resource path
      local_var_path = '/server_stamps'

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
        :return_type => 'ServerStampOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServerStampsApi#server_stamps_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end