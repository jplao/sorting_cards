require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'

class RoundTest < Minitest::Test

  def test_check_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_round_has_a_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    expected = deck
    actual = round.deck
    assert_equal expected, actual
  end

  def test_round_starts_with_no_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    expected = []
    actual = round.guesses
    assert_equal expected, actual
  end

  def test_it_can_find_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    actual = round.current_card
    expected = card_1
    assert_equal expected, actual
  end

  def test_it_can_find_current_card_after_a_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})

    actual = round.current_card
    expected = card_2
    assert_equal expected, actual
  end

  def test_it_can_store_guess_in_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})

    actual = round.guesses.count
    expected = 1
    assert_equal expected, actual
  end

  def test_it_can_store_multiple_guesses_in_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    actual = round.guesses.count
    expected = 2
    assert_equal expected, actual
  end

  def test_it_can_give_guess_positive_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})

    actual = round.guesses.first.feedback
    expected = "Correct!"
    assert_equal expected, actual
  end

  def test_it_can_give_guess_negative_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "Jack", suit: "Diamonds"})

    actual = round.guesses.first.feedback
    expected = "Incorrect."
    assert_equal expected, actual
  end

  def test_it_can_calculate_number_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})

    expected = 1
    actual = round.number_correct
    assert_equal expected, actual
  end

  def test_it_can_calculate_number_correct_with_two_right
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "4", suit: "Clubs"})

    expected = 2
    actual = round.number_correct
    assert_equal expected, actual
  end

  def test_it_can_calculate_number_correct_with_one_wrong
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    expected = 1
    actual = round.number_correct
    assert_equal expected, actual
  end

  def test_it_can_calculate_percent_correct_with_one_wrong
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})

    expected = 50
    actual = round.percent_correct
    assert_equal expected, actual
  end

  def test_it_can_calculate_percent_correct_with_two_right
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "4", suit: "Clubs"})

    expected = 100
    actual = round.percent_correct
    assert_equal expected, actual
  end
end
