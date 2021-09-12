# frozen_string_literal: true

require './lib/enumerable'

def multiply_els(arr)
  arr.my_inject { |result, item| result * item }
end

puts multiply_els([2, 4, 5, 30])
