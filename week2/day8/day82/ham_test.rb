require 'test/unit';
require_relative 'hamtrack';

class Hamilton < Test::Unit::TestCase
  def test_hamdisk1
    assert_equal("Alexander Hamilton", $hamdisk1Arr[0]);
    assert_equal("Aaron Burr, Sir", $hamdisk1Arr[1]);
    assert_equal("My Shot", $hamdisk1Arr[2]);
    assert_equal("The Story of Tonight", $hamdisk1Arr[3]);
    assert_equal("The Schuyler Sisters", $hamdisk1Arr[4]);
    assert_equal("Farmer Refuted", $hamdisk1Arr[5]);
    assert_equal("You'll Be Back", $hamdisk1Arr[6]);
    assert_equal("Right Hand Man", $hamdisk1Arr[7]);
    assert_equal("A Winter's Ball", $hamdisk1Arr[8]);
    assert_equal("Helpless", $hamdisk1Arr[9]);
    assert_equal("Satisfied", $hamdisk1Arr[10]);
    assert_equal("The Story of Tonight (Reprise)", $hamdisk1Arr[11]);
    assert_equal("Wait for It", $hamdisk1Arr[12]);
    assert_equal("Stay Alive", $hamdisk1Arr[13]);
    assert_equal("Ten Duel Commandments", $hamdisk1Arr[14]);
    assert_equal("Meet Me Inside", $hamdisk1Arr[15]);
    assert_equal("That Would Be Enough", $hamdisk1Arr[16]);
    assert_equal("Guns and Ships", $hamdisk1Arr[17]);
    assert_equal("History Has Its Eyes On You", $hamdisk1Arr[18]);
    assert_equal("Yorktown (The World Turned Upside Down)", $hamdisk1Arr[19]);
    assert_equal("What Comes Next?", $hamdisk1Arr[20]);
    assert_equal("Dear Theodosia", $hamdisk1Arr[21]);
    assert_equal("Non-Stop", $hamdisk1Arr[22]);
  end

  def test_hamdisk2
    assert_equal("What'd I Miss?", $hamdisk2Arr[0]);
    assert_equal("Cabinet Battle #1", $hamdisk2Arr[1]);
    assert_equal("Take a Break", $hamdisk2Arr[2]);
    assert_equal("Say No to This", $hamdisk2Arr[3]);
    assert_equal("The Room Where It Happens", $hamdisk2Arr[4]);
    assert_equal("Schuyler Defeated", $hamdisk2Arr[5]);
    assert_equal("Cabinet Battle #2", $hamdisk2Arr[6]);
    assert_equal("Washington On Your Side", $hamdisk2Arr[7]);
    assert_equal("One Last Time", $hamdisk2Arr[8]);
    assert_equal("I Know Him", $hamdisk2Arr[9]);
    assert_equal("The Adams Administration", $hamdisk2Arr[10]);
    assert_equal("We Know", $hamdisk2Arr[11]);
    assert_equal("Hurricane", $hamdisk2Arr[12]);
    assert_equal("The Reynolds Pamphlet", $hamdisk2Arr[13]);
    assert_equal("Burn", $hamdisk2Arr[14]);
    assert_equal("Blow Us All Away", $hamdisk2Arr[15]);
    assert_equal("Stay Alive (Reprise)", $hamdisk2Arr[16]);
    assert_equal("It's Quiet Uptown", $hamdisk2Arr[17]);
    assert_equal("The Election of 1800", $hamdisk2Arr[18]);
    assert_equal("Your Obedient Servant", $hamdisk2Arr[19]);
    assert_equal("Best of Wives and Best of Women", $hamdisk2Arr[20]);
    assert_equal("The World Was Wide Enough", $hamdisk2Arr[21]);
    assert_equal("Who Lives, Who Dies, Who Tells Your Story", $hamdisk2Arr[22]);
end

end
