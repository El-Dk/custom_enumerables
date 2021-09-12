# frozen_string_literal: true

require './lib/enumerable'
puts 'my_each_with_index vs. each_with_index'
numbers = [1, 2, 3, 4, 5]
numbers.my_each_with_index { |item, index| puts "\##{index}: #{item}" }
numbers.each_with_index { |item, index| puts "\##{index}: #{item}" }
