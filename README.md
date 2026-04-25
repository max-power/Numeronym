# Numeronym

`power-numeronym` is a small Ruby gem for generating numeronyms.

## Installation

```bash
bundle add power-numeronym
```

Or:

```bash
gem install power-numeronym
```

## Usage

The gem name is `power-numeronym`, but the Ruby module is `Numeronym`.

```ruby
require "numeronym"

Numeronym.word("internationalization")
# => "i18n"

Numeronym.phrase("Andreessen Horowitz")
# => "A16z"

Numeronym.robot("robot eyes")
# => "R4-E3"
```

There is also a short alias:

```ruby
N7M.phrase("Andreessen Horowitz")
# => "A16z"
```

## API

- `Numeronym.word(input)`: classic word numeronym (`"localization" => "l10n"`).
- `Numeronym.phrase(input)`: phrase numeronym that counts non-space middle characters (`"Andreessen Horowitz" => "A16z"`).
- `Numeronym.robot(input)`: robot-style form per word (`"robot eyes" => "R4-E3"`).

All methods normalize input with `to_s.strip`.

## Development

```bash
bin/setup
bundle exec rake test
```

Use `bin/console` for a local IRB session with the gem loaded.

## License

Released under the [MIT License](https://opensource.org/licenses/MIT).
