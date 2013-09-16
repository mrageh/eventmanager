require "minitest"
require "minitest/autorun"
require "./event_manager"

class EventManagerTest < MiniTest::Test
  def test_it_exists
    #Assignments & Actions
    em = EventManager.new
    #Assertions
    assert_kind_of EventManager, em
  end
end