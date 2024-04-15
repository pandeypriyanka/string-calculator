require 'byebug'
module Calculator

  def self.add(input)
    integers = input.split(/[^0-9-]+/).map(&:to_i)
    integers.sum
  end

end
