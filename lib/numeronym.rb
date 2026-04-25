# frozen_string_literal: true

require_relative "numeronym/version"

module Numeronym
  module_function

  # Phrase style: "Andreessen Horowitz" => "A16z".
  def phrase(input)
    str = normalize(input)
    return str if str.length < 3

    middle_count = str[1...-1].scan(/\S/).size
    "#{str[0]}#{middle_count}#{str[-1]}"
  end

  # Word style: "internationalization" => "i18n".
  def word(input)
    str = normalize(input)
    str.length > 3 ? "#{str[0]}#{str.length - 2}#{str[-1]}" : str
  end

  # Robot style: "robot eyes" => "R4-E3".
  def robot(input)
    str = normalize(input)
    str.split.map { |w| "#{w[0]}#{w.length - 1}" }.join("-").upcase
  end

  def normalize(input)
    input.to_s.strip
  end
  private_class_method :normalize
end

N7M = Numeronym unless defined?(N7M)
