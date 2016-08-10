require_relative 'rule_result'

module CreditCardValidator
  module ValidationRules

    class ChecksumRule
      INVALID_CHECKSUM = RuleResult.new :invalid_checksum

      # Validates the +credit_card+ using the luhn algorithm and returns the appropriate +RuleResult+ 
      # 
      # The algorithm is as follows:
      # 1. Starting with the next to last digit and continuing with every other digit going back to the beginning of the card, double the digit
      # 2. Sum all doubled and untouched digits in the number. For digits greater than 9 split them and sum them independently.
      # 3. If that total is a multiple of 10, the number is valid.
      def self.validate(credit_card)
        reversed = credit_card.number.split(//).map(&:to_i).reverse
        doubled = reversed.map.with_index { |num, idx| idx.odd? ? num*2 : num }.reverse
        summed = doubled.map(&:to_s).join.split(//).map(&:to_i).reduce(:+) || -1
        is_valid = summed % 10 == 0
        is_valid ? RuleResult::SUCCESSFUL : INVALID_CHECKSUM
      end
    end

  end
end