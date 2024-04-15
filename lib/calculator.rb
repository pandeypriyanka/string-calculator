require 'byebug'
module Calculator

  def self.add(input)
    integers = input.split(/[^0-9-]+/).map(&:to_i)
    negative_numbers = integers.select(&:negative?)
    raise "negative numbers not allowed #{negative_numbers.join(', ')}" if negative_numbers.length > 0
    integers.sum
  end

end
