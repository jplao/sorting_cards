require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_check_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_can_store_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    expected = [card_1, card_2, card_3]
    actual = deck.cards
    assert_equal expected, actual
  end

  def test_it_can_count_stored_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    expected = 3
    actual = deck.count
    assert_equal expected, actual
  end
end
