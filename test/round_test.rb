require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'

class RoundTest < Minitest::Test

  def test_check_it_exists
    card = Round.new
    assert_instance_of Round, card
  end
end
