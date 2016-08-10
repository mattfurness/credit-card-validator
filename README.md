# Credit Card Validator

Does some basic validation of credit card numbers.

Currently supported brands / types:
* Visa
* MasterCard
* AMEX
* Discover

## Installation

```sh
git clone https://github.com/mattfurness/credit-card-validator.git
cd credit-card-validator
bundle install
```

## Execution

Execute the validator with a credit card number command line argument.

```sh
bundle exec credit_card_validator 4111111111111111
```

#### Example valid cards
```sh
bundle exec credit_card_validator 4111111111111111
>VALID: CC number looks good. It is a Visa with the number 4111111111111111
```

```sh
bundle exec credit_card_validator 4111-1111-1111-1111
>VALID: CC number looks good. It is a Visa with the number 4111111111111111
```

```sh
bundle exec credit_card_validator "4111 1111 1111 1111"
>VALID: C number looks good. It is a Visa with the number 4111111111111111
```

#### Example invalid card
```sh
bundle exec credit_card_validator 5105105105105106
>INVALID: Oh no, card 5105105105105106 with type MasterCard failed because it had invalid_checksum
```

## Test

```sh
rake
```