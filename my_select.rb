# frozen_string_literal: true

require './lib/enumerable'
puts 'my_select vs. select'
numbers = [1, 2, 3, 4, 5]
p numbers.my_select(&:odd?)
p numbers.select(&:odd?)
