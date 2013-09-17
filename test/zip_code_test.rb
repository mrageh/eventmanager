require "minitest"
require "minitest/autorun"
require "./lib/zip_code"

class ZipCodeTest < MiniTest::Test
  def test_it_is_initialized_from_a_hash_of_data
    data = {:value_zip => '80204'}
    zipcode = ZipCode.new(data)
    assert_equal data[:value_zip], zipcode.value_zip
  end

  def test_if_zip_code_is_less_then_five
    zipcode = ZipCode.new(:value_zip => '8024')
    assert_equal '08024', zipcode.value_zip
  end

  def test_if_zip_code_is_greater_then_five
    zipcode = ZipCode.new(:value_zip => '802405')
    assert_equal '80240', zipcode.value_zip
  end

  def test_if_zip_code_is_missing
    zipcode = ZipCode.new(:value_zip => '')
    assert_equal '00000', zipcode.value_zip
  end
end