module CreditCardValidator
  class Result
    attr_reader :failure_reason
    attr_reader :credit_card

    def initialize(credit_card, rule_results)
      first_invalid_rule = rule_results.find { |result| !result.valid? }
      @failure_reason = !first_invalid_rule.nil? ? first_invalid_rule.reason : nil
      @credit_card = credit_card
    end

    def valid?
    	@failure_reason.nil?
    end
  end
end
