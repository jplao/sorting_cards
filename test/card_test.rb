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

  def test_it_can_hold_value_ranks
    card = Card.new("Jack", "Clubs")

    expected = {"2" => 20, "3" => 30, "4" => 40, "5" => 50, "6" => 60, "7" => 70,
              "8" => 80, "9" => 90, "10" => 100, "Jack" => 110, "Queen" => 120,
              "King" => 130,"Ace" => 140}
    actual = card.rank_value
    assert_equal expected, actual
  end

  def test_it_can_hold_suit_ranks
    card = Card.new("Jack", "Clubs")

    expected = {"Clubs" => 1, "Diamonds" => 2, "Hearts" => 3, "Spades" => 4}
    actual = card.rank_suit
    assert_equal expected, actual
  end

  def test_it_can_rank_cards
    card = Card.new("Jack", "Clubs")

    expected = 111
    actual = card.rank_index
    assert_equal expected, actual
  end
end
