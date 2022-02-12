=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module YousignClient
  class SignatureUiOutput
    # Resource's ID
    attr_accessor :id

    # Resource's name
    attr_accessor :name

    attr_accessor :description

    # Toggle header bar of the app view
    attr_accessor :enable_header_bar

    # Toggle \"Sign as\" band on the top of the app view
    attr_accessor :enable_header_bar_sign_as

    # Toggle sidebar of the app view
    attr_accessor :enable_sidebar

    # Toggle list of members in the procedure
    attr_accessor :enable_member_list

    # Toggle list of documents in the procedure
    attr_accessor :enable_document_list

    # Toggle downloads buttons for documents
    attr_accessor :enable_document_download

    # Toggle activity feed
    attr_accessor :enable_activities

    # True for use a popup for enter the SMS code, false for use a fullscreen view.
    attr_accessor :authentication_popup

    # Default value for zoom of the PDF viewer. Default value is the adapted to the resolution of your screen.
    attr_accessor :default_zoom

    # Base64 of your logo
    attr_accessor :logo

    # Allow sign images types available for signature.
    attr_accessor :sign_image_types_available

    # Default language of the view. Must be in \"languages\" field.
    attr_accessor :default_language

    # Array of allowed languages, use country code
    attr_accessor :languages

    attr_accessor :labels

    # List of fonts to load on the view. (Loaded via google fonts)
    attr_accessor :fonts

    # CSS for customize the view
    attr_accessor :style

    attr_accessor :redirect_cancel

    attr_accessor :redirect_error

    attr_accessor :redirect_success

    # Creator's ID
    attr_accessor :creator

    # Associated Workspace's ID
    attr_accessor :workspace

    # Date of creation
    attr_accessor :created_at

    # Date of last update
    attr_accessor :updated_at

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'description' => :'description',
        :'enable_header_bar' => :'enableHeaderBar',
        :'enable_header_bar_sign_as' => :'enableHeaderBarSignAs',
        :'enable_sidebar' => :'enableSidebar',
        :'enable_member_list' => :'enableMemberList',
        :'enable_document_list' => :'enableDocumentList',
        :'enable_document_download' => :'enableDocumentDownload',
        :'enable_activities' => :'enableActivities',
        :'authentication_popup' => :'authenticationPopup',
        :'default_zoom' => :'defaultZoom',
        :'logo' => :'logo',
        :'sign_image_types_available' => :'signImageTypesAvailable',
        :'default_language' => :'defaultLanguage',
        :'languages' => :'languages',
        :'labels' => :'labels',
        :'fonts' => :'fonts',
        :'style' => :'style',
        :'redirect_cancel' => :'redirectCancel',
        :'redirect_error' => :'redirectError',
        :'redirect_success' => :'redirectSuccess',
        :'creator' => :'creator',
        :'workspace' => :'workspace',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'enable_header_bar' => :'BOOLEAN',
        :'enable_header_bar_sign_as' => :'BOOLEAN',
        :'enable_sidebar' => :'BOOLEAN',
        :'enable_member_list' => :'BOOLEAN',
        :'enable_document_list' => :'BOOLEAN',
        :'enable_document_download' => :'BOOLEAN',
        :'enable_activities' => :'BOOLEAN',
        :'authentication_popup' => :'BOOLEAN',
        :'default_zoom' => :'Float',
        :'logo' => :'String',
        :'sign_image_types_available' => :'Array<String>',
        :'default_language' => :'String',
        :'languages' => :'Array<String>',
        :'labels' => :'Array<SignatureUiLabelOutput>',
        :'fonts' => :'Array<String>',
        :'style' => :'String',
        :'redirect_cancel' => :'SignatureUiOutputRedirectCancel',
        :'redirect_error' => :'SignatureUiOutputRedirectError',
        :'redirect_success' => :'SignatureUiOutputRedirectSuccess',
        :'creator' => :'String',
        :'workspace' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'enableHeaderBar')
        self.enable_header_bar = attributes[:'enableHeaderBar']
      else
        self.enable_header_bar = true
      end

      if attributes.has_key?(:'enableHeaderBarSignAs')
        self.enable_header_bar_sign_as = attributes[:'enableHeaderBarSignAs']
      else
        self.enable_header_bar_sign_as = true
      end

      if attributes.has_key?(:'enableSidebar')
        self.enable_sidebar = attributes[:'enableSidebar']
      else
        self.enable_sidebar = true
      end

      if attributes.has_key?(:'enableMemberList')
        self.enable_member_list = attributes[:'enableMemberList']
      else
        self.enable_member_list = true
      end

      if attributes.has_key?(:'enableDocumentList')
        self.enable_document_list = attributes[:'enableDocumentList']
      else
        self.enable_document_list = true
      end

      if attributes.has_key?(:'enableDocumentDownload')
        self.enable_document_download = attributes[:'enableDocumentDownload']
      else
        self.enable_document_download = true
      end

      if attributes.has_key?(:'enableActivities')
        self.enable_activities = attributes[:'enableActivities']
      else
        self.enable_activities = true
      end

      if attributes.has_key?(:'authenticationPopup')
        self.authentication_popup = attributes[:'authenticationPopup']
      else
        self.authentication_popup = false
      end

      if attributes.has_key?(:'defaultZoom')
        self.default_zoom = attributes[:'defaultZoom']
      end

      if attributes.has_key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.has_key?(:'signImageTypesAvailable')
        if (value = attributes[:'signImageTypesAvailable']).is_a?(Array)
          self.sign_image_types_available = value
        end
      end

      if attributes.has_key?(:'defaultLanguage')
        self.default_language = attributes[:'defaultLanguage']
      end

      if attributes.has_key?(:'languages')
        if (value = attributes[:'languages']).is_a?(Array)
          self.languages = value
        end
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'fonts')
        if (value = attributes[:'fonts']).is_a?(Array)
          self.fonts = value
        end
      end

      if attributes.has_key?(:'style')
        self.style = attributes[:'style']
      end

      if attributes.has_key?(:'redirectCancel')
        self.redirect_cancel = attributes[:'redirectCancel']
      end

      if attributes.has_key?(:'redirectError')
        self.redirect_error = attributes[:'redirectError']
      end

      if attributes.has_key?(:'redirectSuccess')
        self.redirect_success = attributes[:'redirectSuccess']
      end

      if attributes.has_key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.has_key?(:'workspace')
        self.workspace = attributes[:'workspace']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          enable_header_bar == o.enable_header_bar &&
          enable_header_bar_sign_as == o.enable_header_bar_sign_as &&
          enable_sidebar == o.enable_sidebar &&
          enable_member_list == o.enable_member_list &&
          enable_document_list == o.enable_document_list &&
          enable_document_download == o.enable_document_download &&
          enable_activities == o.enable_activities &&
          authentication_popup == o.authentication_popup &&
          default_zoom == o.default_zoom &&
          logo == o.logo &&
          sign_image_types_available == o.sign_image_types_available &&
          default_language == o.default_language &&
          languages == o.languages &&
          labels == o.labels &&
          fonts == o.fonts &&
          style == o.style &&
          redirect_cancel == o.redirect_cancel &&
          redirect_error == o.redirect_error &&
          redirect_success == o.redirect_success &&
          creator == o.creator &&
          workspace == o.workspace &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, description, enable_header_bar, enable_header_bar_sign_as, enable_sidebar, enable_member_list, enable_document_list, enable_document_download, enable_activities, authentication_popup, default_zoom, logo, sign_image_types_available, default_language, languages, labels, fonts, style, redirect_cancel, redirect_error, redirect_success, creator, workspace, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = YousignClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
