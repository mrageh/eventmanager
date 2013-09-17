require "minitest"
require "minitest/autorun"
require "./lib/attendee"

class AttendeeTest < MiniTest::Test

  def test_it_is_initialized_from_a_hash_of_data
    data = {:first_name => 'George', :last_name => 'Washington', :value_phone => '0123456789', :value_zip => '80204'}
    attendee = Attendee.new(data)
    assert_equal data[:first_name], attendee.first_name
    assert_equal data[:last_name], attendee.last_name
    assert_equal data[:value_phone], attendee.phone_number.value_phone
    assert_equal data[:value_zip], attendee.zip_code.value_zip
  end

end