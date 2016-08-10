require_relative 'credit_card'
require_relative 'result'
require_relative 'validation_rules/known_type_rule'
require_relative 'validation_rules/checksum_rule'
require_relative 'validation_rules/valid_number_rule'

module CreditCardValidator
  class Validator
    @@validation_rules = [
      ValidationRules::ValidNumberRule,
      ValidationRules::KnownTypeRule,
      ValidationRules::ChecksumRule
    ]

    # Returns the +Result+ of the validated +credit_card_number+.
    #
    # The validations rules are run in order of:
    # 1. Is the number a valid number 
    # 2. Can the type of the card be determined
    # 3. Does the checksum match
    def self.validate(credit_card_number)
      credit_card = CreditCard.new credit_card_number
      rule_results = @@validation_rules.map { |rule| rule.validate(credit_card) }
      Result.new credit_card, rule_results
    end
  end
end
