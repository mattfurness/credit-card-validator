require 'minitest/spec'
require 'minitest/autorun'
require 'credit_card_validator'

describe CreditCardValidator do

  describe "when validating an uknown card type" do
    before do
      @invalid_result = CreditCardValidator.validate '9111111111111111'
    end

    it "is not valid" do
      @invalid_result.valid?.must_equal false
    end

    it "with an invalid card reason" do
      @invalid_result.failure_reason.must_equal :invalid_type
    end
  end

  describe "when validating a visa card with incorrect number" do
    before do
      @visa_result = CreditCardValidator.validate '4111111111111'
    end
    
    it "is valid" do
      @visa_result.valid?.must_equal false
    end

    it "has no failure reason" do
      @visa_result.failure_reason.must_equal(:invalid_checksum)
    end

    it "is a visa card" do
      @visa_result.credit_card.type.must_equal :Visa
    end
  end

  describe "when validating a visa card type" do
    before do
      @visa_result = CreditCardValidator.validate '4111111111111111'
    end

    it "is valid" do
      @visa_result.valid?.must_equal true
    end

    it "has no failure reason" do
      @visa_result.failure_reason.must_be_nil
    end

    it "is a visa card" do
      @visa_result.credit_card.type.must_equal :Visa
    end
  end

end