require 'minitest/spec'
require 'minitest/autorun'
require 'credit_card_validator/credit_card'

describe CreditCardValidator::Type::Provider do

  describe "when prefix is 4 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('4111222233334444').must_equal :Visa
    end
  end  

  describe "when prefix is 4 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('4111222233334').must_equal :Visa
    end
  end

  describe "when prefix is 6011 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('6011222233334444').must_equal :Discover
    end
  end

  describe "when prefix is 51 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('5111222233334444').must_equal :MasterCard
    end
  end

  describe "when prefix is 52 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('5211222233334444').must_equal :MasterCard
    end
  end

  describe "when prefix is 53 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('5311222233334444').must_equal :MasterCard
    end
  end

  describe "when prefix is 54 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('5411222233334444').must_equal :MasterCard
    end
  end

  describe "when prefix is 55 and length is 16" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('5511222233334444').must_equal :MasterCard
    end
  end

  describe "when prefix is 34 and length is 15" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('341122223333444').must_equal :AMEX
    end
  end

  describe "when prefix is 37 and length is 15" do
    it "is a visa card" do
      CreditCardValidator::Type::Provider.choose_card_type('371122223333444').must_equal :AMEX
    end
  end

end