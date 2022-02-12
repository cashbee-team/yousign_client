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
  class SignatureUIsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Signature UI Labels
    # Only usefull if you use a filter with name or signatureUI
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filtering on name of signature ui labels
    # @option opts [String] :signature_ui Filtering on id of signature ui resource
    # @return [Array<SignatureUiLabelOutput>]
    def signature_ui_labels_get(opts = { })
      data, _status_code, _headers = signature_ui_labels_get_with_http_info(opts)
      data
    end

    # Get Signature UI Labels
    # Only usefull if you use a filter with name or signatureUI
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filtering on name of signature ui labels
    # @option opts [String] :signature_ui Filtering on id of signature ui resource
    # @return [Array<(Array<SignatureUiLabelOutput>, Integer, Hash)>] Array<SignatureUiLabelOutput> data, response status code and response headers
    def signature_ui_labels_get_with_http_info(opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_get ...'
      end
      # resource path
      local_var_path = '/signature_ui_labels'

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:name] = opts[:name] unless opts[:name].nil?
      query_params[:signatureUi] = opts[:signature_ui] unless opts[:signature_ui].nil?

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<SignatureUiLabelOutput>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_ui_labels_get',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete a Signature UI Label
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui label
    # @return [nil]
    def signature_ui_labels_id_delete(id, opts = { })
      signature_ui_labels_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a Signature UI Label
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui label
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def signature_ui_labels_id_delete_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_ui_labels_id_delete"
      end

      # resource path
      local_var_path = '/signature_ui_labels/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:id] = opts[:id2] unless opts[:id2].nil?

      # header parameters
      header_params = opts[:header_params] || { }

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_ui_labels_id_delete',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Find a Signature UI Label by ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui label
    # @return [SignatureUiLabelOutput]
    def signature_ui_labels_id_get(id, opts = { })
      data, _status_code, _headers = signature_ui_labels_id_get_with_http_info(id, opts)
      data
    end

    # Find a Signature UI Label by ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui label
    # @return [Array<(SignatureUiLabelOutput, Integer, Hash)>] SignatureUiLabelOutput data, response status code and response headers
    def signature_ui_labels_id_get_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_ui_labels_id_get"
      end

      # resource path
      local_var_path = '/signature_ui_labels/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:id] = opts[:id2] unless opts[:id2].nil?

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SignatureUiLabelOutput'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_ui_labels_id_get',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update a Signature UI Label
    # @param id [String]
    # @param body [SignatureUiLabelInput]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui labels
    # @return [SignatureUiLabelOutput]
    def signature_ui_labels_id_put(id, body, opts = { })
      data, _status_code, _headers = signature_ui_labels_id_put_with_http_info(id, body, opts)
      data
    end

    # Update a Signature UI Label
    # @param id [String]
    # @param body [SignatureUiLabelInput]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of signature ui labels
    # @return [Array<(SignatureUiLabelOutput, Integer, Hash)>] SignatureUiLabelOutput data, response status code and response headers
    def signature_ui_labels_id_put_with_http_info(id, body, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_ui_labels_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        raise ArgumentError, "Missing the required parameter 'body' when calling SignatureUIsApi.signature_ui_labels_id_put"
      end

      # resource path
      local_var_path = '/signature_ui_labels/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:id] = opts[:id2] unless opts[:id2].nil?

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SignatureUiLabelOutput'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_ui_labels_id_put',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create a new Signature UI Label
    # @param body [SignatureUiLabelInput]
    # @param [Hash] opts the optional parameters
    # @return [SignatureUiLabelOutput]
    def signature_ui_labels_post(body, opts = { })
      data, _status_code, _headers = signature_ui_labels_post_with_http_info(body, opts)
      data
    end

    # Create a new Signature UI Label
    # @param body [SignatureUiLabelInput]
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureUiLabelOutput, Integer, Hash)>] SignatureUiLabelOutput data, response status code and response headers
    def signature_ui_labels_post_with_http_info(body, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_ui_labels_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        raise ArgumentError, "Missing the required parameter 'body' when calling SignatureUIsApi.signature_ui_labels_post"
      end

      # resource path
      local_var_path = '/signature_ui_labels'

      # query parameters
      query_params = opts[:query_params] || { }

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SignatureUiLabelOutput'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_ui_labels_post',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_ui_labels_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get Signature UI list
    # @param [Hash] opts the optional parameters
    # @return [Array<SignatureUiOutput>]
    def signature_uis_get(opts = { })
      data, _status_code, _headers = signature_uis_get_with_http_info(opts)
      data
    end

    # Get Signature UI list
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SignatureUiOutput>, Integer, Hash)>] Array<SignatureUiOutput> data, response status code and response headers
    def signature_uis_get_with_http_info(opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_get ...'
      end
      # resource path
      local_var_path = '/signature_uis'

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
      return_type = opts[:debug_return_type] || 'Array<SignatureUiOutput>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_uis_get',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete a Signature UI
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of the signature ui
    # @return [nil]
    def signature_uis_id_delete(id, opts = { })
      signature_uis_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a Signature UI
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 Id of the signature ui
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def signature_uis_id_delete_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_uis_id_delete"
      end

      # resource path
      local_var_path = '/signature_uis/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:id] = opts[:id2] unless opts[:id2].nil?

      # header parameters
      header_params = opts[:header_params] || { }

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_uis_id_delete',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Find a Signature UI by ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of a signature ui
    # @return [SignatureUiOutput]
    def signature_uis_id_get(id, opts = { })
      data, _status_code, _headers = signature_uis_id_get_with_http_info(id, opts)
      data
    end

    # Find a Signature UI by ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of a signature ui
    # @return [Array<(SignatureUiOutput, Integer, Hash)>] SignatureUiOutput data, response status code and response headers
    def signature_uis_id_get_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_uis_id_get"
      end

      # resource path
      local_var_path = '/signature_uis/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:id] = opts[:id2] unless opts[:id2].nil?

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SignatureUiOutput'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_uis_id_get',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update a Signature UI
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui to update
    # @return [SignatureUiInputUpdate]
    def signature_uis_id_put(id, opts = { })
      data, _status_code, _headers = signature_uis_id_put_with_http_info(id, opts)
      data
    end

    # Update a Signature UI
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id2 id of signature ui to update
    # @return [Array<(SignatureUiInputUpdate, Integer, Hash)>] SignatureUiInputUpdate data, response status code and response headers
    def signature_uis_id_put_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError, "Missing the required parameter 'id' when calling SignatureUIsApi.signature_uis_id_put"
      end

      # resource path
      local_var_path = '/signature_uis/{id}'.sub('{id}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || { }
      query_params[:id] = opts[:id2] unless opts[:id2].nil?

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SignatureUiInputUpdate'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_uis_id_put',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create a new Signature UI
    # Here is the url format to build on your side to get a custom signature interface with your settings :  https://webapp.yousign.com/procedure/sign?members=~2Fmembers~2F__MEMBER_ID__&signatureUi=~2Fsignature_uis~2F__SIGNATURE_UI_ID__
    # @param body [SignatureUiInput]
    # @param [Hash] opts the optional parameters
    # @return [SignatureUiOutput]
    def signature_uis_post(body, opts = { })
      data, _status_code, _headers = signature_uis_post_with_http_info(body, opts)
      data
    end

    # Create a new Signature UI
    # Here is the url format to build on your side to get a custom signature interface with your settings :  https://webapp.yousign.com/procedure/sign?members&#x3D;~2Fmembers~2F__MEMBER_ID__&amp;signatureUi&#x3D;~2Fsignature_uis~2F__SIGNATURE_UI_ID__
    # @param body [SignatureUiInput]
    # @param [Hash] opts the optional parameters
    # @return [Array<(SignatureUiOutput, Integer, Hash)>] SignatureUiOutput data, response status code and response headers
    def signature_uis_post_with_http_info(body, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SignatureUIsApi.signature_uis_post ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        raise ArgumentError, "Missing the required parameter 'body' when calling SignatureUIsApi.signature_uis_post"
      end

      # resource path
      local_var_path = '/signature_uis'

      # query parameters
      query_params = opts[:query_params] || { }

      # header parameters
      header_params = opts[:header_params] || { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      unless content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || { }

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SignatureUiOutput'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        operation:     :'SignatureUIsApi.signature_uis_post',
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignatureUIsApi#signature_uis_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
