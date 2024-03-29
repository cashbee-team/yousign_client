=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module YousignClient
  class ProceduresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export Procedure list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Return Procedure list based on the status for each Procedure
    # @option opts [String] :name Filter by name (contains)
    # @option opts [String] :members_firstname Filter by member firstname (contains)
    # @option opts [String] :members_lastname Filter by member lastname (contains)
    # @option opts [String] :members_phone Filter by member phone (contains)
    # @option opts [String] :members_email Filter by member email (contains)
    # @option opts [String] :files_name Filter by file name (contains)
    # @option opts [Array<Date>] :created_at Filter by creation date  createdAt[after]&#x3D;2017-09-18 createdAt[before]&#x3D;2017-09-18 createdAt[strictly_after]&#x3D;2017-09-18 createdAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :updated_at Filter by update date  updatedAt[after]&#x3D;2017-09-18 updatedAt[before]&#x3D;2017-09-18 updatedAt[strictly_after]&#x3D;2017-09-18 updatedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :expires_at Filter by expire date  expiresAt[after]&#x3D;2017-09-18 expiresAt[before]&#x3D;2017-09-18 expiresAt[strictly_after]&#x3D;2017-09-18 expiresAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :deleted_at Filter by delete date  deletedAt[after]&#x3D;2017-09-18 deletedAt[before]&#x3D;2017-09-18 deletedAt[strictly_after]&#x3D;2017-09-18 deletedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [String] :order_created_at Order by attribut
    # @return [String]
    def export_procedures_get(opts = {})
      data, _status_code, _headers = export_procedures_get_with_http_info(opts)
      data
    end

    # Export Procedure list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Return Procedure list based on the status for each Procedure
    # @option opts [String] :name Filter by name (contains)
    # @option opts [String] :members_firstname Filter by member firstname (contains)
    # @option opts [String] :members_lastname Filter by member lastname (contains)
    # @option opts [String] :members_phone Filter by member phone (contains)
    # @option opts [String] :members_email Filter by member email (contains)
    # @option opts [String] :files_name Filter by file name (contains)
    # @option opts [Array<Date>] :created_at Filter by creation date  createdAt[after]&#x3D;2017-09-18 createdAt[before]&#x3D;2017-09-18 createdAt[strictly_after]&#x3D;2017-09-18 createdAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :updated_at Filter by update date  updatedAt[after]&#x3D;2017-09-18 updatedAt[before]&#x3D;2017-09-18 updatedAt[strictly_after]&#x3D;2017-09-18 updatedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :expires_at Filter by expire date  expiresAt[after]&#x3D;2017-09-18 expiresAt[before]&#x3D;2017-09-18 expiresAt[strictly_after]&#x3D;2017-09-18 expiresAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :deleted_at Filter by delete date  deletedAt[after]&#x3D;2017-09-18 deletedAt[before]&#x3D;2017-09-18 deletedAt[strictly_after]&#x3D;2017-09-18 deletedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [String] :order_created_at Order by attribut
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def export_procedures_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.export_procedures_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['active', 'finished', 'expired', 'refused', 'draft'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of active, finished, expired, refused, draft'
      end
      if @api_client.config.client_side_validation && opts[:'order_created_at'] && !['asc', 'desc'].include?(opts[:'order_created_at'])
        fail ArgumentError, 'invalid value for "order_created_at", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/export/procedures'

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'members.firstname'] = opts[:'members_firstname'] if !opts[:'members_firstname'].nil?
      query_params[:'members.lastname'] = opts[:'members_lastname'] if !opts[:'members_lastname'].nil?
      query_params[:'members.phone'] = opts[:'members_phone'] if !opts[:'members_phone'].nil?
      query_params[:'members.email'] = opts[:'members_email'] if !opts[:'members_email'].nil?
      query_params[:'files.name'] = opts[:'files_name'] if !opts[:'files_name'].nil?
      query_params[:'createdAt'] = @api_client.build_collection_param(opts[:'created_at'], :csv) if !opts[:'created_at'].nil?
      query_params[:'updatedAt'] = @api_client.build_collection_param(opts[:'updated_at'], :csv) if !opts[:'updated_at'].nil?
      query_params[:'expiresAt'] = @api_client.build_collection_param(opts[:'expires_at'], :csv) if !opts[:'expires_at'].nil?
      query_params[:'deletedAt'] = @api_client.build_collection_param(opts[:'deleted_at'], :csv) if !opts[:'deleted_at'].nil?
      query_params[:'order[createdAt]'] = opts[:'order_created_at'] if !opts[:'order_created_at'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#export_procedures_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Procedure list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Return Procedure list based on the status for each Procedure
    # @option opts [BOOLEAN] :template Used to get Procedure template list (default to false)
    # @option opts [Array<String>] :members Get Procedure list for given members (paraph mode)
    # @option opts [String] :items_per_page Number of items per page for the pagination
    # @option opts [BOOLEAN] :pagination Enable the pagination
    # @option opts [Integer] :page Page of the pagination
    # @option opts [String] :name Filter by name (contains)
    # @option opts [String] :members_firstname Filter by member firstname (contains)
    # @option opts [String] :members_lastname Filter by member lastname (contains)
    # @option opts [String] :members_phone Filter by member phone (contains)
    # @option opts [String] :members_email Filter by member email (contains)
    # @option opts [String] :files_name Filter by file name (contains)
    # @option opts [Array<Date>] :created_at Filter by creation date  createdAt[after]&#x3D;2017-09-18 createdAt[before]&#x3D;2017-09-18 createdAt[strictly_after]&#x3D;2017-09-18 createdAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :updated_at Filter by update date  updatedAt[after]&#x3D;2017-09-18 updatedAt[before]&#x3D;2017-09-18 updatedAt[strictly_after]&#x3D;2017-09-18 updatedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :expires_at Filter by expire date  expiresAt[after]&#x3D;2017-09-18 expiresAt[before]&#x3D;2017-09-18 expiresAt[strictly_after]&#x3D;2017-09-18 expiresAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :deleted_at Filter by delete date  deletedAt[after]&#x3D;2017-09-18 deletedAt[before]&#x3D;2017-09-18 deletedAt[strictly_after]&#x3D;2017-09-18 deletedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [String] :order_created_at Order by createdAt  order[createdAt]&#x3D;asc order[createdAt]&#x3D;desc
    # @return [Array<ProcedureOutput>]
    def procedures_get(opts = {})
      data, _status_code, _headers = procedures_get_with_http_info(opts)
      data
    end

    # Get Procedure list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Return Procedure list based on the status for each Procedure
    # @option opts [BOOLEAN] :template Used to get Procedure template list
    # @option opts [Array<String>] :members Get Procedure list for given members (paraph mode)
    # @option opts [String] :items_per_page Number of items per page for the pagination
    # @option opts [BOOLEAN] :pagination Enable the pagination
    # @option opts [Integer] :page Page of the pagination
    # @option opts [String] :name Filter by name (contains)
    # @option opts [String] :members_firstname Filter by member firstname (contains)
    # @option opts [String] :members_lastname Filter by member lastname (contains)
    # @option opts [String] :members_phone Filter by member phone (contains)
    # @option opts [String] :members_email Filter by member email (contains)
    # @option opts [String] :files_name Filter by file name (contains)
    # @option opts [Array<Date>] :created_at Filter by creation date  createdAt[after]&#x3D;2017-09-18 createdAt[before]&#x3D;2017-09-18 createdAt[strictly_after]&#x3D;2017-09-18 createdAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :updated_at Filter by update date  updatedAt[after]&#x3D;2017-09-18 updatedAt[before]&#x3D;2017-09-18 updatedAt[strictly_after]&#x3D;2017-09-18 updatedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :expires_at Filter by expire date  expiresAt[after]&#x3D;2017-09-18 expiresAt[before]&#x3D;2017-09-18 expiresAt[strictly_after]&#x3D;2017-09-18 expiresAt[strictly_before]&#x3D;2017-09-18
    # @option opts [Array<Date>] :deleted_at Filter by delete date  deletedAt[after]&#x3D;2017-09-18 deletedAt[before]&#x3D;2017-09-18 deletedAt[strictly_after]&#x3D;2017-09-18 deletedAt[strictly_before]&#x3D;2017-09-18
    # @option opts [String] :order_created_at Order by createdAt  order[createdAt]&#x3D;asc order[createdAt]&#x3D;desc
    # @return [Array<(Array<ProcedureOutput>, Fixnum, Hash)>] Array<ProcedureOutput> data, response status code and response headers
    def procedures_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['active', 'finished', 'expired', 'refused', 'draft'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of active, finished, expired, refused, draft'
      end
      if @api_client.config.client_side_validation && opts[:'order_created_at'] && !['asc', 'desc'].include?(opts[:'order_created_at'])
        fail ArgumentError, 'invalid value for "order_created_at", must be one of asc, desc'
      end
      # resource path
      local_var_path = '/procedures'

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'template'] = opts[:'template'] if !opts[:'template'].nil?
      query_params[:'members'] = @api_client.build_collection_param(opts[:'members'], :csv) if !opts[:'members'].nil?
      query_params[:'itemsPerPage'] = opts[:'items_per_page'] if !opts[:'items_per_page'].nil?
      query_params[:'pagination'] = opts[:'pagination'] if !opts[:'pagination'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'members.firstname'] = opts[:'members_firstname'] if !opts[:'members_firstname'].nil?
      query_params[:'members.lastname'] = opts[:'members_lastname'] if !opts[:'members_lastname'].nil?
      query_params[:'members.phone'] = opts[:'members_phone'] if !opts[:'members_phone'].nil?
      query_params[:'members.email'] = opts[:'members_email'] if !opts[:'members_email'].nil?
      query_params[:'files.name'] = opts[:'files_name'] if !opts[:'files_name'].nil?
      query_params[:'createdAt'] = @api_client.build_collection_param(opts[:'created_at'], :csv) if !opts[:'created_at'].nil?
      query_params[:'updatedAt'] = @api_client.build_collection_param(opts[:'updated_at'], :csv) if !opts[:'updated_at'].nil?
      query_params[:'expiresAt'] = @api_client.build_collection_param(opts[:'expires_at'], :csv) if !opts[:'expires_at'].nil?
      query_params[:'deletedAt'] = @api_client.build_collection_param(opts[:'deleted_at'], :csv) if !opts[:'deleted_at'].nil?
      query_params[:'order[createdAt]'] = opts[:'order_created_at'] if !opts[:'order_created_at'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ProcedureOutput>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Procedure
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procedures_id_delete(id, opts = {})
      procedures_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a Procedure
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procedures_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProceduresApi.procedures_id_delete"
      end
      # resource path
      local_var_path = '/procedures/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Duplicate a Procedure
    # @param id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureOutput]
    def procedures_id_duplicate_post(id, body, opts = {})
      data, _status_code, _headers = procedures_id_duplicate_post_with_http_info(id, body, opts)
      data
    end

    # Duplicate a Procedure
    # @param id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureOutput, Fixnum, Hash)>] ProcedureOutput data, response status code and response headers
    def procedures_id_duplicate_post_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_id_duplicate_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProceduresApi.procedures_id_duplicate_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProceduresApi.procedures_id_duplicate_post"
      end
      # resource path
      local_var_path = '/procedures/{id}/duplicate'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProcedureOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_id_duplicate_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find a Procedure by ID
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureOutput]
    def procedures_id_get(id, opts = {})
      data, _status_code, _headers = procedures_id_get_with_http_info(id, opts)
      data
    end

    # Find a Procedure by ID
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureOutput, Fixnum, Hash)>] ProcedureOutput data, response status code and response headers
    def procedures_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProceduresApi.procedures_id_get"
      end
      # resource path
      local_var_path = '/procedures/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProcedureOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a Procedure proof file
    # Get a Procedure proof file
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def procedures_id_proof_get(id, opts = {})
      data, _status_code, _headers = procedures_id_proof_get_with_http_info(id, opts)
      data
    end

    # Get a Procedure proof file
    # Get a Procedure proof file
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def procedures_id_proof_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_id_proof_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProceduresApi.procedures_id_proof_get"
      end
      # resource path
      local_var_path = '/procedures/{id}/proof'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_id_proof_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Procedure
    # @param id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureOutput]
    def procedures_id_put(id, body, opts = {})
      data, _status_code, _headers = procedures_id_put_with_http_info(id, body, opts)
      data
    end

    # Update a Procedure
    # @param id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureOutput, Fixnum, Hash)>] ProcedureOutput data, response status code and response headers
    def procedures_id_put_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProceduresApi.procedures_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProceduresApi.procedures_id_put"
      end
      # resource path
      local_var_path = '/procedures/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProcedureOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remind a Procedure
    # @param id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureOutput]
    def procedures_id_remind_post(id, body, opts = {})
      data, _status_code, _headers = procedures_id_remind_post_with_http_info(id, body, opts)
      data
    end

    # Remind a Procedure
    # @param id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureOutput, Fixnum, Hash)>] ProcedureOutput data, response status code and response headers
    def procedures_id_remind_post_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_id_remind_post ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProceduresApi.procedures_id_remind_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProceduresApi.procedures_id_remind_post"
      end
      # resource path
      local_var_path = '/procedures/{id}/remind'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProcedureOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_id_remind_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Procedure
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ProcedureOutput]
    def procedures_post(body, opts = {})
      data, _status_code, _headers = procedures_post_with_http_info(body, opts)
      data
    end

    # Create a new Procedure
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProcedureOutput, Fixnum, Hash)>] ProcedureOutput data, response status code and response headers
    def procedures_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProceduresApi.procedures_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ProceduresApi.procedures_post"
      end
      # resource path
      local_var_path = '/procedures'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProcedureOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProceduresApi#procedures_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
