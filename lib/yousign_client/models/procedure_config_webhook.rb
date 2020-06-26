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
  class ProcedureConfigWebhook
    attr_accessor :procedure_started

    attr_accessor :procedure_finished

    attr_accessor :procedure_refused

    attr_accessor :procedure_expired

    attr_accessor :procedure_deleted

    attr_accessor :member_started

    attr_accessor :member_finished

    attr_accessor :comment_created

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'procedure_started' => :'procedure.started',
        :'procedure_finished' => :'procedure.finished',
        :'procedure_refused' => :'procedure.refused',
        :'procedure_expired' => :'procedure.expired',
        :'procedure_deleted' => :'procedure.deleted',
        :'member_started' => :'member.started',
        :'member_finished' => :'member.finished',
        :'comment_created' => :'comment.created'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'procedure_started' => :'Array<ConfigWebhookTemplate>',
        :'procedure_finished' => :'Array<ConfigWebhookTemplate>',
        :'procedure_refused' => :'Array<ConfigWebhookTemplate>',
        :'procedure_expired' => :'Array<ConfigWebhookTemplate>',
        :'procedure_deleted' => :'Array<ConfigWebhookTemplate>',
        :'member_started' => :'Array<ConfigWebhookTemplate>',
        :'member_finished' => :'Array<ConfigWebhookTemplate>',
        :'comment_created' => :'Array<ConfigWebhookTemplate>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'procedure.started')
        if (value = attributes[:'procedure.started']).is_a?(Array)
          self.procedure_started = value
        end
      end

      if attributes.has_key?(:'procedure.finished')
        if (value = attributes[:'procedure.finished']).is_a?(Array)
          self.procedure_finished = value
        end
      end

      if attributes.has_key?(:'procedure.refused')
        if (value = attributes[:'procedure.refused']).is_a?(Array)
          self.procedure_refused = value
        end
      end

      if attributes.has_key?(:'procedure.expired')
        if (value = attributes[:'procedure.expired']).is_a?(Array)
          self.procedure_expired = value
        end
      end

      if attributes.has_key?(:'procedure.deleted')
        if (value = attributes[:'procedure.deleted']).is_a?(Array)
          self.procedure_deleted = value
        end
      end

      if attributes.has_key?(:'member.started')
        if (value = attributes[:'member.started']).is_a?(Array)
          self.member_started = value
        end
      end

      if attributes.has_key?(:'member.finished')
        if (value = attributes[:'member.finished']).is_a?(Array)
          self.member_finished = value
        end
      end

      if attributes.has_key?(:'comment.created')
        if (value = attributes[:'comment.created']).is_a?(Array)
          self.comment_created = value
        end
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          procedure_started == o.procedure_started &&
          procedure_finished == o.procedure_finished &&
          procedure_refused == o.procedure_refused &&
          procedure_expired == o.procedure_expired &&
          procedure_deleted == o.procedure_deleted &&
          member_started == o.member_started &&
          member_finished == o.member_finished &&
          comment_created == o.comment_created
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [procedure_started, procedure_finished, procedure_refused, procedure_expired, procedure_deleted, member_started, member_finished, comment_created].hash
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