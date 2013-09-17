require "minitest"
require "minitest/autorun"
require "./lib/phone_number"

class PhoneNumberTest < MiniTest::Test

  def test_it_is_initialized_from_a_hash_of_data
    data = {:value_phone => '2024556677'}
    phone = PhoneNumber.new(data)
    assert_equal data[:value_phone], phone.value_phone
  end

  def test_it_cleans_up_phone_numbers_with_periods_and_hyphens
    phone = PhoneNumber.new(:value_phone => "202.444-9382")
    assert_equal "2024449382", phone.value_phone
  end

  def test_it_removes_leading_one_from_an_eleven_digit_phone_number
    phone = PhoneNumber.new(:value_phone => "12024449382")
    assert_equal "2024449382", phone.value_phone
  end

  def test_it_throws_away_phone_numbers_that_are_too_long
    phone = PhoneNumber.new(:value_phone => "23334445555")
    assert_equal "0000000000", phone.value_phone
  end

  def test_it_throws_away_phone_numbers_that_are_too_short
    phone = PhoneNumber.new(:value_phone => "222333444")
    assert_equal "0000000000", phone.value_phone
  end
end