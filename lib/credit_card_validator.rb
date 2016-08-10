require_relative 'credit_card_validator/validator'

module CreditCardValidator

  # Returns the +Result+ of the validated +credit_card_number+.
  #
  # Note: The card number is sanitized (all non digits removed)
  def self.validate(credit_card_number)
    Validator.validate(credit_card_number)
  end

  # Returns whether the +credit_card_number+ is valid.
  #
  # Note: The card number is sanitized (all non digits removed)
  def self.valid?(credit_card_number)
    validate(credit_card_number).valid?
  end
end
