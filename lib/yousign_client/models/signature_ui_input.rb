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

require 'date'
require 'time'

module YousignClient
  class SignatureUiInput
    # Signature UI's name
    attr_accessor :name

    # Signature UI's description
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

    # True for use a popup to enter the SMS code, false for use a fullscreen view.
    attr_accessor :authentication_popup

    # Default value for zoom of the PDF viewer. Default value is the adapted to the resolution of your screen.
    attr_accessor :default_zoom

    # Base64 of your logo
    attr_accessor :logo

    # Allow sign images types available for signature. The first type of the list will be selected as default for the signer.
    attr_accessor :sign_image_types_available

    # Default selected language of the interface. Must be present in \"languages\" field.
    attr_accessor :default_language

    # Array of allowed languages, use country code
    attr_accessor :languages

    attr_accessor :labels, :redirect_cancel, :redirect_error, :redirect_success

    # List of fonts to load on the view. (Loaded via Google fonts)
    attr_accessor :fonts

    # CSS for customize the view
    attr_accessor :style

    class EnumAttributeValidator
      attr_reader :datatype, :allowable_values

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
        name                       => name,
        description                => description,
        enable_header_bar          => :enableHeaderBar,
        enable_header_bar_sign_as  => :enableHeaderBarSignAs,
        enable_sidebar             => :enableSidebar,
        enable_member_list         => :enableMemberList,
        enable_document_list       => :enableDocumentList,
        enable_document_download   => :enableDocumentDownload,
        enable_activities          => :enableActivities,
        authentication_popup       => :authenticationPopup,
        default_zoom               => :defaultZoom,
        logo                       => logo,
        sign_image_types_available => :signImageTypesAvailable,
        default_language           => :defaultLanguage,
        languages                  => languages,
        labels                     => labels,
        fonts                      => fonts,
        style                      => style,
        redirect_cancel            => :redirectCancel,
        redirect_error             => :redirectError,
        redirect_success           => :redirectSuccess
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        name                       => :String,
        description                => :String,
        enable_header_bar          => :Boolean,
        enable_header_bar_sign_as  => :Boolean,
        enable_sidebar             => :Boolean,
        enable_member_list         => :Boolean,
        enable_document_list       => :Boolean,
        enable_document_download   => :Boolean,
        enable_activities          => :Boolean,
        authentication_popup       => :Boolean,
        default_zoom               => :Float,
        logo                       => :String,
        sign_image_types_available => :'Array<String>',
        default_language           => :String,
        languages                  => :'Array<String>',
        labels                     => :'Array<SignatureUiLabelInputIncluded>',
        fonts                      => :'Array<String>',
        style                      => :String,
        redirect_cancel            => :SignatureUiInputRedirectCancel,
        redirect_error             => :SignatureUiInputRedirectError,
        redirect_success           => :SignatureUiInputRedirectSuccess
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = { })
      unless attributes.is_a?(Hash)
        raise ArgumentError, 'The input argument (attributes) must be a hash in `YousignClient::SignatureUiInput` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({ }) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError, "`#{k}` is not a valid attribute in `YousignClient::SignatureUiInput`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      if attributes.key?(:name)
        self.name = attributes[:name]
      end

      if attributes.key?(:description)
        self.description = attributes[:description]
      end

      self.enable_header_bar = if attributes.key?(:enable_header_bar)
                                 attributes[:enable_header_bar]
                               else
                                 true
        end

      self.enable_header_bar_sign_as = if attributes.key?(:enable_header_bar_sign_as)
                                         attributes[:enable_header_bar_sign_as]
                                       else
                                         true
        end

      self.enable_sidebar = if attributes.key?(:enable_sidebar)
                              attributes[:enable_sidebar]
                            else
                              true
        end

      self.enable_member_list = if attributes.key?(:enable_member_list)
                                  attributes[:enable_member_list]
                                else
                                  true
        end

      self.enable_document_list = if attributes.key?(:enable_document_list)
                                    attributes[:enable_document_list]
                                  else
                                    true
        end

      self.enable_document_download = if attributes.key?(:enable_document_download)
                                        attributes[:enable_document_download]
                                      else
                                        true
        end

      self.enable_activities = if attributes.key?(:enable_activities)
                                 attributes[:enable_activities]
                               else
                                 true
        end

      self.authentication_popup = if attributes.key?(:authentication_popup)
                                    attributes[:authentication_popup]
                                  else
                                    false
        end

      if attributes.key?(:default_zoom)
        self.default_zoom = attributes[:default_zoom]
      end

      if attributes.key?(:logo)
        self.logo = attributes[:logo]
      end

      if attributes.key?(:sign_image_types_available)
        if (value = attributes[:sign_image_types_available]).is_a?(Array)
          self.sign_image_types_available = value
        end
      end

      if attributes.key?(:default_language)
        self.default_language = attributes[:default_language]
      end

      if attributes.key?(:languages)
        if (value = attributes[:languages]).is_a?(Array)
          self.languages = value
        end
      end

      if attributes.key?(:labels)
        if (value = attributes[:labels]).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:fonts)
        if (value = attributes[:fonts]).is_a?(Array)
          self.fonts = value
        end
      end

      if attributes.key?(:style)
        self.style = attributes[:style]
      end

      if attributes.key?(:redirect_cancel)
        self.redirect_cancel = attributes[:redirect_cancel]
      end

      if attributes.key?(:redirect_error)
        self.redirect_error = attributes[:redirect_error]
      end

      if attributes.key?(:redirect_success)
        self.redirect_success = attributes[:redirect_success]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if !@default_zoom.nil? && @default_zoom > 5E+2
        invalid_properties.push('invalid value for "default_zoom", must be smaller than or equal to 5E+2.')
      end

      if !@default_zoom.nil? && @default_zoom < 1
        invalid_properties.push('invalid value for "default_zoom", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if !@default_zoom.nil? && @default_zoom > 5E+2
      return false if !@default_zoom.nil? && @default_zoom < 1

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] default_zoom Value to be assigned
    def default_zoom=(default_zoom)
      if !default_zoom.nil? && default_zoom > 5E+2
        raise ArgumentError, 'invalid value for "default_zoom", must be smaller than or equal to 5E+2.'
      end

      if !default_zoom.nil? && default_zoom < 1
        raise ArgumentError, 'invalid value for "default_zoom", must be greater than or equal to 1.'
      end

      @default_zoom = default_zoom
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        name == other.name &&
        description == other.description &&
        enable_header_bar == other.enable_header_bar &&
        enable_header_bar_sign_as == other.enable_header_bar_sign_as &&
        enable_sidebar == other.enable_sidebar &&
        enable_member_list == other.enable_member_list &&
        enable_document_list == other.enable_document_list &&
        enable_document_download == other.enable_document_download &&
        enable_activities == other.enable_activities &&
        authentication_popup == other.authentication_popup &&
        default_zoom == other.default_zoom &&
        logo == other.logo &&
        sign_image_types_available == other.sign_image_types_available &&
        default_language == other.default_language &&
        languages == other.languages &&
        labels == other.labels &&
        fonts == other.fonts &&
        style == other.style &&
        redirect_cancel == other.redirect_cancel &&
        redirect_error == other.redirect_error &&
        redirect_success == other.redirect_success
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, enable_header_bar, enable_header_bar_sign_as, enable_sidebar, enable_member_list, enable_document_list, enable_document_download, enable_activities, authentication_popup, default_zoom, logo, sign_image_types_available, default_language, languages, labels, fonts, style, redirect_cancel, redirect_error, redirect_success].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize(Regexp.last_match(1), v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        { }.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = YousignClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
      hash = { }
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        { }.tap do |hash|
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
