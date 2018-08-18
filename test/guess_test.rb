require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_check_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_response_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expected = "10 of Hearts"
    actual = guess.response
    assert_equal expected, actual
  end

  def test_card_attribute_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expected =
    actual = guess.card
    assert_equal expected, actual
  end

  def test_it_can_compare_cards
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    expected = true
    actual = guess.correct?
    assert_equal expected, actual
  end
end
