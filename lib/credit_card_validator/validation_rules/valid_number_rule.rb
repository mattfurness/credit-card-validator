require_relative 'rule_result'

module CreditCardValidator
  module ValidationRules

    class ValidNumberRule
      NO_NUMBERS = RuleResult.new :no_numbers

      # Validates the +credit_card+ has a number that is actually populated
      # with digits and returns the appropriate +RuleResult+ 
      def self.validate(credit_card)
        credit_card.number.match(/^(\d)+$/).nil? ? NO_NUMBERS : RuleResult::SUCCESSFUL
      end
    end

  end
end
