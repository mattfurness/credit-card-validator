require_relative 'descriptor'

module CreditCardValidator
  module Type
    class Provider
      @@type_descriptors = [
        Descriptor.new(/^(34|37)/, [15], :AMEX),
        Descriptor.new(/^6011/, [16], :Discover),
        Descriptor.new(/^5[1-5]/, [16], :MasterCard),
        Descriptor.new(/^4/, [13, 16], :Visa)
      ]

      # Returns the appropriate type as a symbol for the +card_number+ or +:Unknown+.
      def self.choose_card_type(card_number)        
        matched_descriptor = @@type_descriptors.find {|desc| desc.match?(card_number)}
        !matched_descriptor.nil? ? matched_descriptor.type : :Unknown
      end
    end
  end
end
