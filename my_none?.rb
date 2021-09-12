# frozen_string_literal: true

require './lib/enumerable'
puts 'my_none? vs. none?'
numbers = [1, 2, 3, 4, 5]
puts numbers.my_none?(&:odd?)
puts numbers.none?(&:odd?)
puts numbers.my_none? { |item| item > 5 }
puts numbers.none? { |item| item > 5 }
