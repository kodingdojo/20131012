require 'minitest/autorun'

class SingleList
    attr_accessor :current, :next
end


class MyTest < Minitest::Test
    def test_aoe
        assert_equal 1, 1
    end
end

class TestSingleListDefinition < Minitest::Test
    def test_initialize
        l = SingleList.new
        assert_equal nil, l.current
        assert_equal nil, l.next
    end
end
