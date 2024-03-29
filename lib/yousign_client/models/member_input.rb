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
  class MemberInput
    # ID of the user in your companies. Informations about the member will be duplicate (first name, last name, email and phone number).  Required if none of fields above are specified.
    attr_accessor :user

    # Type of a member. \"signer\" to sign documents (legally) and \"validator\" to validate documents.
    attr_accessor :type

    # Firstname of an external member. Required if user field is blank
    attr_accessor :firstname

    # Lastname of an external member. Required if user field is blank
    attr_accessor :lastname

    # Email of an external member. Required if user field is blank
    attr_accessor :email

    # Phone of an external member. Required if user field is blank
    attr_accessor :phone

    # If the procedure have the boolean \"ordered\" at true, you can define position of the order to invite your members to sign. Only the first member will be invited to sign.  When the first member have signed, the second will be invited, etc...
    attr_accessor :position

    attr_accessor :file_objects

    # Procedure id reference
    attr_accessor :procedure

    attr_accessor :operation_level

    attr_accessor :operation_custom_modes

    attr_accessor :mode_sms_configuration

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
        :'user' => :'user',
        :'type' => :'type',
        :'firstname' => :'firstname',
        :'lastname' => :'lastname',
        :'email' => :'email',
        :'phone' => :'phone',
        :'position' => :'position',
        :'file_objects' => :'fileObjects',
        :'procedure' => :'procedure',
        :'operation_level' => :'operationLevel',
        :'operation_custom_modes' => :'operationCustomModes',
        :'mode_sms_configuration' => :'modeSmsConfiguration'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'user' => :'String',
        :'type' => :'String',
        :'firstname' => :'String',
        :'lastname' => :'String',
        :'email' => :'String',
        :'phone' => :'String',
        :'position' => :'Integer',
        :'file_objects' => :'Array<FileObjectInput>',
        :'procedure' => :'String',
        :'operation_level' => :'String',
        :'operation_custom_modes' => :'Array<String>',
        :'mode_sms_configuration' => :'ModeSmsConfiguration'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'signer'
      end

      if attributes.has_key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.has_key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'fileObjects')
        if (value = attributes[:'fileObjects']).is_a?(Array)
          self.file_objects = value
        end
      end

      if attributes.has_key?(:'procedure')
        self.procedure = attributes[:'procedure']
      end

      if attributes.has_key?(:'operationLevel')
        self.operation_level = attributes[:'operationLevel']
      end

      if attributes.has_key?(:'operationCustomModes')
        if (value = attributes[:'operationCustomModes']).is_a?(Array)
          self.operation_custom_modes = value
        end
      end

      if attributes.has_key?(:'modeSmsConfiguration')
        self.mode_sms_configuration = attributes[:'modeSmsConfiguration']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ['signer', 'validator'])
      return false unless type_validator.valid?(@type)
      operation_level_validator = EnumAttributeValidator.new('String', ['none', 'custom', 'advanced'])
      return false unless operation_level_validator.valid?(@operation_level)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['signer', 'validator'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operation_level Object to be assigned
    def operation_level=(operation_level)
      validator = EnumAttributeValidator.new('String', ['none', 'custom', 'advanced'])
      unless validator.valid?(operation_level)
        fail ArgumentError, 'invalid value for "operation_level", must be one of #{validator.allowable_values}.'
      end
      @operation_level = operation_level
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user == o.user &&
          type == o.type &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          email == o.email &&
          phone == o.phone &&
          position == o.position &&
          file_objects == o.file_objects &&
          procedure == o.procedure &&
          operation_level == o.operation_level &&
          operation_custom_modes == o.operation_custom_modes &&
          mode_sms_configuration == o.mode_sms_configuration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [user, type, firstname, lastname, email, phone, position, file_objects, procedure, operation_level, operation_custom_modes, mode_sms_configuration].hash
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
