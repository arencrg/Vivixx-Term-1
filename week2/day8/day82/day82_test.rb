require 'test/unit'
require_relative 'day82'

class HamTest < Test::Unit::TestCase
  def test_songtitle
    song = Ham.new('Alexander Hamilton', 'Lin-Manuel Miranda, Leslie Odom Jr., cast', '3min56secs')
    assert_equal('Alexander Hamilton', song.title)
  end
  def test_songsinger
    song = Ham.new('Alexander Hamilton', 'Lin-Manuel Miranda, Leslie Odom Jr., cast', '3min56secs')
    assert_equal('Lin-Manuel Miranda, Leslie Odom Jr., cast', song.singer)
  end
  def test_songtime
    song = Ham.new('Alexander Hamilton', 'Lin-Manuel Miranda, Leslie Odom Jr., cast', '3min56secs')
    assert_equal('3min56secs', song.time)
  end
  def test_songinput
    newham = Ham.new(title, singer, time)
    assert_equal(title, 'Aaron Burr')
  end
end
