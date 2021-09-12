# frozen_string_literal: true

module Enumerable
  def my_each(&block)
    each(&block)
    self
  end

  def my_each_with_index
    index = 0
    each do |value|
      yield(value, index)
      index += 1
    end
    self
  end

  def my_select
    new_array = []
    my_each do |item|
      new_array << item if yield item
    end
    new_array
  end

  def my_all?(&proc)
    all = true
    proc = proc { |obj| obj } if proc.instance_of?(NilClass)
    my_each do |item|
      all = false unless proc.call item
    end
    all
  end

  def my_any?(&proc)
    any = false
    proc = proc { |obj| obj } if proc.instance_of?(NilClass)
    my_each do |item|
      if proc.call(item)
        any = true
        break
      end
    end
    any
  end

  def my_none?(&proc)
    none = true
    proc = proc { |obj| obj } if proc.instance_of?(NilClass)
    my_each do |item|
      if proc.call(item)
        none = false
        break
      end
    end
    none
  end

  def my_count(object = (variable_not_passed = true
                         nil))
    count = 0
    if !variable_not_passed
      each do |item|
        count += 1 if item == object
      end
    elsif block_given?
      each do |item|
        count += 1 if yield item
      end
    else
      each do |_item|
        count += 1
      end
    end
    count
  end

  def my_map
    map = []
    if block_given?
      my_each do |item|
        map << yield(item)
      end
    else
      map = Enumerator.new(self, :map)
    end
    map
  end

  def my_inject(initial_value = (variable_not_passed = true
                                 nil))
    if variable_not_passed
      combined = first
      first_element = true
    else
      combined = initial_value
      first_element = false
    end
    each do |item|
      if variable_not_passed && first_element
        first_element = false
        next
      end
      combined = yield(combined, item)
    end
    combined
  end
end
