# frozen_string_literal: true

require './lib/enumerable'
puts 'my_any? vs. any?'
numbers = [1, 2, 3, 4, 5]
p numbers.my_any?(&:odd?)
p numbers.any?(&:odd?)
p numbers.my_any? { |item| item.instance_of?(String) }
p numbers.any? { |item| item.instance_of?(String) }
