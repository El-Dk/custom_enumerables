# frozen_string_literal: true

require './lib/enumerable'
puts 'my_all? vs. all?'
numbers = [1, 2, 3, 4, 5]
puts numbers.my_all?(&:odd?)
puts numbers.all?(&:odd?)
puts '-------'
puts numbers.my_all? { |item| item.instance_of?(Integer) }
puts numbers.all? { |item| item.instance_of?(Integer) }
