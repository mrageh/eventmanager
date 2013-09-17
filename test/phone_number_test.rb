require "minitest"
require "minitest/autorun"
require "./lib/phone_number"

class PhoneNumberTest < MiniTest::Test

  def test_it_is_initialized_from_a_hash_of_data
    data = {:phone_number => '2024556677'}
    phone = PhoneNumber.new(data)
    assert_equal data[:phone_number], phone.phone_number
  end

  def test_it_cleans_up_phone_numbers_with_periods_and_hyphens
    phone = PhoneNumber.new(:phone_number => "202.444-9382")
    # assert "2024449382" == phone.phone_number
    assert_equal "2024449382", phone.phone_number
  end

  def test_it_removes_leading_one_from_an_eleven_digit_phone_number
    phone = PhoneNumber.new(:phone_number => "12024449382")
    assert_equal "2024449382", phone.phone_number
  end

  def test_it_throws_away_phone_numbers_that_are_too_long
    phone = PhoneNumber.new(:phone_number => "23334445555")
    assert_equal "0000000000", phone.phone_number
  end

  def test_it_throws_away_phone_numbers_that_are_too_short
    phone = PhoneNumber.new(:phone_number => "222333444")
    assert_equal "0000000000", phone.phone_number
  end
end