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

    expected = card
    actual = guess.card
    assert_equal expected, actual
  end

  def test_it_can_compare_same_cards
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    expected = true
    actual = guess.correct?
    assert_equal expected, actual
  end

  def test_it_can_compare_different_cards
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    expected = false
    actual = guess.correct?
    assert_equal expected, actual
  end

  def test_if_can_give_positive_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    expected = "Correct!"
    actual = guess.feedback
    assert_equal expected, actual
  end

  def test_if_can_give_negative_feedback
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    expected = "Incorrect."
    actual = guess.feedback
    assert_equal expected, actual
  end

end
