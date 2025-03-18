class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    digits(numbers).sum
  end

  private

  def self.digits(numbers)
    if custom_delimiter?(numbers)
      delimiter = numbers[2]
      numbers.split("\n").last.split(delimiter).map(&:to_i)
    else
      numbers.split(/[\n,]/).map(&:to_i)
    end
  end

  def self.custom_delimiter?(numbers)
    numbers.start_with?("//")
  end
end
