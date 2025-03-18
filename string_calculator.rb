class StringCalculator
  def self.add(numbers)
    digits = parse_and_validate_numbers(numbers)

    digits.sum
  end

  private

  def self.parse_and_validate_numbers(numbers)
    return [] if numbers.empty?

    digits = extract_digits(numbers)
    raise_negative_number(digits)

    digits
  end

  def self.extract_digits(numbers)
    delimiter, number_string = extract_delimiter_and_numbers(numbers)

    number_string.split(delimiter).map(&:to_i)
  end

  def self.extract_delimiter_and_numbers(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      number_string = numbers.split("\n", 2).last
    else
      delimiter = /[\n,]/
      number_string = numbers
    end

    [delimiter, number_string]
  end

  def self.raise_negative_number(digits)
    negatives = digits.select(&:negative?)

    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
  end
end
