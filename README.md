# String Calculator

A Ruby class to add numbers provided as a string with custom delimiters.

## Usage

### Calling class method

### Addition

```ruby

StringCalculator.add("")d => Returns 0

StringCalculator.add("1") => Returns 1

StringCalculator.add("1,2") => Returns 3

StringCalculator.add("1,2,3,4,5") => Returns 15

StringCalculator.add("1\n2,3") => Returns 6

StringCalculator.add("//;\n1;2") => Returns 3

StringCalculator.add("1,-2,3,-4") => Raises exception negative numbers not allowed -2, -4