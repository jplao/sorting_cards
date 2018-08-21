require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'

class RoundTest < Minitest::Test

  def test_check_it_exists
    round = Round.new(deck)
    assert_instance_of Round, card
  end

  def test_it_can_find_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    actual = round.current_card
    expected =
    assert_equal expected, actual
  end

  def test_it_can_record_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    expected = [#<Guess:0x007fc1792d8330 @card=#<Card:0x007fc1792625e0 @suit="Hearts", @value="3">, @response="3 of Hearts">]
    actual = round.record_guess({value: "3", suit: "Hearts"})
    assert_equal expected, actual
  end
end
