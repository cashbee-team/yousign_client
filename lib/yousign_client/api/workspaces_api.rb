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
  class WorkspacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all Workspaces
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<WorkspaceOutput>]
    def workspaces_get(authorization, opts = {})
      data, _status_code, _headers = workspaces_get_with_http_info(authorization, opts)
      data
    end

    # List all Workspaces
    # @param authorization [String] Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WorkspaceOutput>, Integer, Hash)>] Array<WorkspaceOutput> data, response status code and response headers
    def workspaces_get_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspacesApi.workspaces_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling WorkspacesApi.workspaces_get"
      end
      # resource path
      local_var_path = '/workspaces'

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
      return_type = opts[:return_type] || 'Array<WorkspaceOutput>' 

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
        @api_client.config.logger.debug "API called: WorkspacesApi#workspaces_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
