require 'csv'
require 'SecureRandom'

CSV.foreach('playlist2.csv', headers: true) do |row|
  puts "Song title is #{ row['song_title'] }"
end

CSV.open('playlist2.csv', 'a+') do |csv_file|
  csv_file << [SecureRandom.uuid, 'The Anthem', 'Good Charlotte']
end
