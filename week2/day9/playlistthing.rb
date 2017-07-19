require 'CSV'

class Playlist
attr_accessor :code, :song_title, :artist

def initialize(hash)
  @code = hash[:code]
  @song_title = hash[:song_title]
  @artist = hash[:artist]
end

def self.from_csv_row(row)
  self.new({
    code: row['code'].to_i,
    song_title: row['song_title'],
    artist: row['artist']
    })
end
end

HEADERS = ['code', 'song_title', 'artist']

def to_csv_row
  CSV::Row.new(HEADERS, [code, song_title, artist])
end

newsong = Playlist.new({
  code: 1,
  song_title: "I'm Not Okay (I Promise)",
  artist: "My Chemical Romance"
  })

CSV.open('playlistnew.csv', 'a+') do |csv|
    csv << newsong.to_csv_row
    end

playlistnew = []

  CSV.foreach('playlistnew.csv', headers: true) do |row|
  newsong = Playlist.from_csv_row(row)
  playlistnew << newsong
  puts "#{newsong.code} = #{newsong.song_title} by #{newsong.artist}"
end
