# frozen_string_literal: true

require './lib/enumerable'
puts 'my_count vs. count'
numbers = [1, 2, 3, 4, 5]
p numbers.my_count(&:odd?)
p numbers.count(&:odd?)
