require_relative 'type/provider'

module CreditCardValidator
  class CreditCard
    attr_reader :number
    attr_reader :type

    def initialize(card_number)
      @number = card_number.to_s.gsub(/\D/, '')
      @type = Type::Provider.choose_card_type(@number)
    end
  end
end
