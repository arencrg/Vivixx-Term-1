require 'test/unit'
require_relative 'day8'
class ClassmateCheck < Test::Unit::TestCase

def test_classmatelist
  c1=Classmate.new('jason')
  assert_equal(c1.first_name,'jason')
end

def test_removeclassmate
  assert_include()
end

end
