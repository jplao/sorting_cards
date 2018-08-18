require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_check_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_values_exist
    card = Card.new("Ace", "Spades")
    expected = "Ace"
    actual = card.value
    assert_equal expected, actual
  end

  def test_suits_exists
    card = Card.new("Ace", "Spades")
    expected = "Spades"
    actual = card.suit
    assert_equal expected, actual
  end
end
