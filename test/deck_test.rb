require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_check_it_exists
    deck = Deck.new(card_1)
    assert_instance_of Deck, card
  end

  def test_it_can_get_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    expected = [card_1, card_2, card_3]
    actual = deck.cards
  end
end 
