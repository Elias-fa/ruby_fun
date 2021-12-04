require 'pry'
class Bottles

  PHRASE_1 = "of beer on the wall,"
  PHRASE_2 = "of beer."
  PHRASE_3 = "\nTake one down and pass it around,"
  PHRASE_4 = "of beer on the wall.\n"
  END_PHRASE = "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store, buy some more. 99 bottles of beer on the wall."

  def song(start, stop)
    start.downto(stop) {|b_c| puts verse(b_c)}
  end

  private

  def verse(bottle_count)
    [bottle_count, hg(bottle_count) , PHRASE_1, bottle_count, hg(bottle_count), PHRASE_2, PHRASE_3, bottle_count -= 1, hg(bottle_count), PHRASE_4, (END_PHRASE if bottle_count == 0)].join(' ')
  end

  def hg(bottle_count)
    bottle_count == 1 ? 'bottle' : 'bottles'
  end
end

Bottles.new.song(99,1)
