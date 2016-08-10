module CreditCardValidator
  module ValidationRules

    class RuleResult

      attr_reader :reason

      def initialize(reason)
        @reason = reason
      end

      def valid?
      	@reason == :successful
      end
            
      SUCCESSFUL = RuleResult.new :successful
    end
  end
end
