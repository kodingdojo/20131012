require 'minitest/autorun'

class SingleList
    attr_accessor :data, :next

    def initialize(data = nil)
        @data = data
    end

    def append(list)
        @next = list
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
        assert_equal nil, l.data
        assert_equal nil, l.next
    end

    def test_initialize_with_current
        l = SingleList.new("head")
        assert_equal "head", l.data
    end

    def test_append_node
        l = SingleList.new("head")
        l.append(SingleList.new("second"))
        assert_equal "second",l.next.data
    end
end
