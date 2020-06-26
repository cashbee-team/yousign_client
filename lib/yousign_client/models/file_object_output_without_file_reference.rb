=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module YousignClient
  class FileObjectOutputWithoutFileReference
    # Id of the object
    attr_accessor :id

    # Page of the visible signature. This property is ignored if fieldName is set. If you want a visible signature, you must set page, position and fieldName.
    attr_accessor :page

    # Coordinates of the signature image to set. Format is : “llx,lly,urx,ury”. llx=left lower x coordinate, lly=left lower y coordinate, urx=upper right x coordinate, ury = upper right y coordinate. To get easily coordinates, you could use this tool : http://placeit.yousign.fr
    attr_accessor :position

    # Name of the signature field existing in the document
    attr_accessor :field_name

    # Text associated above the signature image.  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature.
    attr_accessor :mention

    # Text associated below the signature image.  You can use some variable inside : {{date.en}} {{date.fr}} {{time.en}} {{time.fr}} that it will be parsed to show the date of the signature.
    attr_accessor :mention2__internal

    # Created date of the object
    attr_accessor :created_at

    # Updated date of the object
    attr_accessor :updated_at

    # Date of signature or validation
    attr_accessor :executed_at

    # The reason they are signing the agreement
    attr_accessor :reason

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'page' => :'page',
        :'position' => :'position',
        :'field_name' => :'fieldName',
        :'mention' => :'mention',
        :'mention2__internal' => :'mention2 (internal)',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'executed_at' => :'executedAt',
        :'reason' => :'reason'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'page' => :'Integer',
        :'position' => :'String',
        :'field_name' => :'String',
        :'mention' => :'String',
        :'mention2__internal' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'executed_at' => :'DateTime',
        :'reason' => :'String'
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

      if attributes.has_key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'fieldName')
        self.field_name = attributes[:'fieldName']
      end

      if attributes.has_key?(:'mention')
        self.mention = attributes[:'mention']
      end

      if attributes.has_key?(:'mention2 (internal)')
        self.mention2__internal = attributes[:'mention2 (internal)']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end

      if attributes.has_key?(:'executedAt')
        self.executed_at = attributes[:'executedAt']
      end

      if attributes.has_key?(:'reason')
        self.reason = attributes[:'reason']
      else
        self.reason = 'Signed by Yousign'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id !~ Regexp.new(/^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/)
        invalid_properties.push('invalid value for "id", must conform to the pattern /^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/.')
      end

      if !@position.nil? && @position !~ Regexp.new(/^\\d+(,\\d+){3}$/)
        invalid_properties.push('invalid value for "position", must conform to the pattern /^\\d+(,\\d+){3}$/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/)
      return false if !@position.nil? && @position !~ Regexp.new(/^\\d+(,\\d+){3}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id !~ Regexp.new(/^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/)
        fail ArgumentError, 'invalid value for "id", must conform to the pattern /^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] position Value to be assigned
    def position=(position)
      if !position.nil? && position !~ Regexp.new(/^\\d+(,\\d+){3}$/)
        fail ArgumentError, 'invalid value for "position", must conform to the pattern /^\\d+(,\\d+){3}$/.'
      end

      @position = position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          page == o.page &&
          position == o.position &&
          field_name == o.field_name &&
          mention == o.mention &&
          mention2__internal == o.mention2__internal &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          executed_at == o.executed_at &&
          reason == o.reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, page, position, field_name, mention, mention2__internal, created_at, updated_at, executed_at, reason].hash
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