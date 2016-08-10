require 'minitest/spec'
require 'minitest/autorun'
require 'credit_card_validator/credit_card'

describe CreditCardValidator::CreditCard do

  describe "when card number has dashes" do
    before do
      @credit_card = CreditCardValidator::CreditCard.new '1-1-1-1'
    end

    it "the number should be sanitized" do
      @credit_card.number.must_equal '1111'
    end
  end

  describe "when card number has spaces" do
    before do
      @credit_card = CreditCardValidator::CreditCard.new '1 1 1 1'
    end

    it "the number is sanitized" do
      @credit_card.number.must_equal '1111'
    end
  end
end