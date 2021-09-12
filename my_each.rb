# frozen_string_literal: true

require './lib/enumerable'
puts 'my_each vs. each'
numbers = [1, 2, 3, 4, 5]
numbers.my_each  { |item| puts item }
numbers.each { |item| puts item }
my_hash = {
  name: 'david',
  last_name: 'gilmour',
  pink_floyd: true,
  age: 75
}
puts '----------each2'
my_hash.each { |key, value| puts "#{key}: #{value}" }
puts '----------my2'
my_hash.my_each { |key, value| puts "#{key}: #{value}" }
puts '----------each1'
my_hash.each { |key| puts key.to_s }
puts '----------my1'
my_hash.my_each { |key| puts key.to_s }
