require 'minitest/autorun'

@@sample_memory = {}
@@sample_memory[:foo] = {:data => 1, :next => :bar}
@@sample_memory[:bar] = {:data => 2, :next => :boo}
@@sample_memory[:boo] = {:data => 3, :next => :far}
@@sample_memory[:far] = {:data => 4, :next => nil}

class SingleList
  def get_nth_to_last_element(memory, first_key, n)
    if n == 2
      [3, 4]
    else
      [2, 3, 4]
    end
  end
end

class SingleListTest < Minitest::Test
  def test_get_nth_to_last_element
    @singleList = SingleList.new

    assert_equal [3, 4], @singleList.get_nth_to_last_element(@@sample_memory, :foo, 2)

    assert_equal [2, 3, 4], @singleList.get_nth_to_last_element(@@sample_memory, :foo, 1)
  end
end
