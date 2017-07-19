#munchiezcsv
require 'CSV'

class MunchiezMenu
attr_accessor :code, :item, :price

def initialize(hash)
  @code = hash[:code]
  @item = hash[:item]
  @price = hash[:price]
end

def self.from_csv_row(row)
  self.new({
    code: row['code'].to_i,
    item: row['item'],
    price: row['price'].to_i
    })
end
end

HEADERS = ['code', 'item', 'price']

def to_csv_row
  CSV::Row.new(HEADERS, [code, item, price])
end

CSV.foreach('munchiezmenu.csv', headers: true) do |row|
  showmethefood = Menu.from_csv_row(row)
  puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
end
