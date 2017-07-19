require 'test/unit'
require_relative 'customerdatabase'
class CustomerTest < Test::Unit::TestCase
  def test_name
    customer1 = Customer.new('Aren Cariaga', '09178138010', 'clarence13cariaga@gmail.com', 100000 )
    assert_equal('John', customer1.name)
  end
  def test_number
    customer1 = Customer.new('Aren Cariaga', '09178138010', 'clarence13cariaga@gmail.com', 100000 )
    assert_equal('09178138010', customer1.number)
  end
  def test_email
    customer1 = Customer.new('Aren Cariaga', '09178138010', 'clarence13cariaga@gmail.com', 100000 )
    assert_equal('clarence13cariaga@gmail.com', customer1.email)
  end
  def test_balance
    customer1 = Customer.new('Aren Cariaga', '09178138010', 'clarence13cariaga@gmail.com', 100000 )
    assert_equal(100000, customer.balance)
  end
end


///



#
class CustomerDatabase
  def initialize(name, number, email, balance)
    @name = name
    @number = number
    @email = email
    @balance = balance.to_i
  end
  def name
    @name
  end
  def number
    @number
  end
  def email
    @email
  end
  def balance
    @balance
  end
  end

  end
end
