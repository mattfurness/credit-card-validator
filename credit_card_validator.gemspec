require_relative "lib/credit_card_validator/version"

Gem::Specification.new do |gem|
  gem.name        = "credit_card_validator"
  gem.version     = CreditCardValidator::VERSION
  gem.authors     = ["Matt"]
  gem.homepage    = "https://github.com/matt_furness/credit-card-validator"
  gem.summary     = "Credit Card Validator"
  gem.description = "Validates credit card numbers based on various rules"
  gem.license     = "MIT"

  gem.add_development_dependency 'minitest'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = "credit_card_validator"
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end