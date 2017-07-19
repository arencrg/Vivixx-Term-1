require 'CSV'

class Account

attr_accessor :name, :number, :email, :balance

def initialize(hash)
  @name = hash[:name]
  @number = hash[:number]
  @email = hash[:email]
  @balance = hash[:balance]
end

def self.from_csv_row2(row)
self.new({
  name: row['name'],
  number: row['number'],
  email: row['email'],
  balance: row['balance'].to_i
  })
end
end


#
class Menu
attr_accessor :code, :item, :price
def initialize(hash)
  @code = hash[:code]
  @item = hash[:item]
  @price = hash[:price]
end
def self.from_csv_row1(row)
  self.new({
    code: row['code'].to_i,
    item: row['item'],
    price: row['price'].to_i
    })
end
end
#
HEADERS1 = ['code', 'item', 'price']
HEADERS2 = ['name', 'number', 'email', 'balance']

def to_csv_row1
  CSV::Row.new(HEADERS1, [code, item, price])
end

def to_csv_row2
  CSV::Row.new(HEADERS2, [name, number, email, balance])
end
