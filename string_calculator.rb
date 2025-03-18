class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    digits = extract_digits(numbers)
    raise_negative_number(digits)

    digits.sum
  end

  private

  def self.extract_digits(numbers)
    delimiter, number_string = parse_input(numbers)

    number_string.split(delimiter).map(&:to_i)
  end

  def self.parse_input(numbers)
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
