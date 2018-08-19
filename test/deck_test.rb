require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_check_it_exists
    deck = Deck.new(card_1)
    assert_instance_of Deck, card
  end
end 
