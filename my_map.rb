# frozen_string_literal: true

require './lib/enumerable'
puts 'my_map vs. map'
numbers = [1, 2, 3, 4, 5]
p numbers.my_map { |item| item * item }
p numbers.map { |item| item * item }
