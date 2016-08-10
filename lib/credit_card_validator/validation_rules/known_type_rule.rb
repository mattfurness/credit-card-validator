require_relative 'rule_result'

module CreditCardValidator
  module ValidationRules

    class KnownTypeRule
      INVALID_TYPE = RuleResult.new :invalid_type

      # Validates the +credit_card+ has a known type and returns the
      # appropriate +RuleResult+ 
      def self.validate(credit_card)
        credit_card.type != :Unknown ? RuleResult::SUCCESSFUL : INVALID_TYPE
      end
    end

  end
end
