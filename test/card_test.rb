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

  def test_it_can_hold_rank_values
    card = Card.new("Jack", "Clubs")

    expected = {"2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7,
              "8" => 8, "9" => 9, "10" => 10, "Jack" => 11, "Queen" => 12,
              "King" => 13,"Ace" => 14}
    actual = card.rank_value
    assert_equal expected, actual
  end

  def test_it_can_rank_values
    card = Card.new("Jack", "Clubs")

    expected = 11
    actual = card.rank_index
    assert_equal expected, actual
  end
end
