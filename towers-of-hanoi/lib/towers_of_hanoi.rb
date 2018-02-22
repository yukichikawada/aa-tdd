require 'byebug'

class TowersOfHanoi
  attr_reader :piles

  def initialize(piles = nil)
    @piles = piles || [[1, 2, 3], [], []]
  end

  def move(start_pos, end_pos)
    raise ArgumentError if start_pos == end_pos
    raise ArgumentError if piles[start_pos].empty?
    unless piles[end_pos].empty?
      raise ArgumentError if piles[start_pos].first > piles[end_pos].first
    end

    disc = piles[start_pos].shift
    piles[end_pos].unshift(disc)
  end

  def won?
    piles[0].empty? && (piles[1].empty? || piles[2].empty?)
  end

end
