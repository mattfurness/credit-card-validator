module CreditCardValidator
  module Type
    class Descriptor
      attr_reader :type

      def initialize(prefixRule, lengths, type)
        @prefixRule = prefixRule
        @cardNumberLengths = lengths
        @type = type
      end

      def match?(cardNumber)
        (cardNumber =~ @prefixRule) && (@cardNumberLengths.include? cardNumber.size)
      end
    end
  end
end
