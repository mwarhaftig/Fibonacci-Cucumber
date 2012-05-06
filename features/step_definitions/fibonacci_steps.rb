#!/usr/bin/ruby
require File.expand_path(File.dirname(__FILE__) + "/../../src/FibCalculator")

Given /^an end user wants to find a Fibonacci value$/ do
    @fib=FibCalculator.new 
end

When /^n=(.*) is inputted$/ do |n|
	@fib.findFibNumber(n)
end

Then /^the Fibonacci calculator should return a value of (\d+)$/ do |knownValue|
    @fib.value?.should eq(knownValue.to_i)
end

Then /^the Fibonacci calculator should return an error message$/ do
    @fib.value?.should match(/^\[ERROR\].*/)
end

