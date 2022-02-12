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

require 'cgi'

module YousignClient
  class WorkspacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all Workspaces
    # @param [Hash] opts the optional parameters
    # @return [Array<WorkspaceOutput>]
    def workspaces_get(opts = { })
      data, _status_code, _headers = workspaces_get_with_http_info(opts)
      data
    end

    # List all Workspaces
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WorkspaceOutput>, Integer, Hash)>] Array<WorkspaceOutput> data, response status code and response headers
    def workspaces_get_with_http_info(opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkspacesApi.workspaces_get ...'
      end
      # resource path
      local_var_path = '/workspaces'

      # query parameters
      query_params = opts[:query_params] || { }

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<WorkspaceOutput>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'WorkspacesApi.workspaces_get',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkspacesApi#workspaces_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
