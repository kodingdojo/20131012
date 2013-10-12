require 'minitest/autorun'

class SingleList
    attr_accessor :current, :next

    def initialize(current = nil)
        @current = current
    end
end


class MyTest < Minitest::Test
    def test_aoe
        assert_equal 1, 1
    end
end


class TestSingleListDefinition < Minitest::Test
    def test_initialize_without_arguments
        l = SingleList.new
        assert_equal nil, l.current
        assert_equal nil, l.next
    end

    def test_initialize_with_current
        l = SingleList.new("head")
        assert_equal "head", l.current
    end
end
