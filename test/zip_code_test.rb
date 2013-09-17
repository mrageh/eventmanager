require "minitest"
require "minitest/autorun"
require "./lib/zip_code"

class ZipCodeTest < MiniTest::Test
  def test_it_is_initialized_from_a_hash_of_data
    data = {:zipcode => '80204'}
    zipcode_object = ZipCode.new(data)
    assert_equal data[:zipcode], zipcode_object.zipcode
  end
  def test_if_zip_code_is_less_then_five
    zipcode_object = ZipCode.new(:zipcode => '8024')
    assert_equal '08024', zipcode_object.zipcode
  end
end