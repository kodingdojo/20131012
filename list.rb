require 'minitest/autorun'

class SingleList
    attr_accessor :data, :next

    def initialize(data = nil)
        @data = data
    end

    def append(list)
        @next = list
    end

    def last
        pointer = self
        while pointer.next != nil
            pointer = pointer.next
        end
        pointer
    end

    def nth(n)
        pointer = self
        (1..n).each do
            if pointer.next
                pointer = pointer.next
            else
                pointer = nil
                break
            end
        end
        pointer
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

    def test_get_last
        l = SingleList.new("head")
        l.append(SingleList.new("second"))
        l.next.append(SingleList.new("third"))
        l.next.next.append(SingleList.new("last"))

        assert_equal "last", l.last.data
    end

    def test_nth_member
        l = SingleList.new("head")
        l.append(SingleList.new("second"))
        l.next.append(SingleList.new("third"))
        l.next.next.append(SingleList.new("last"))

        assert_equal "third", l.nth(2).data
    end

    def test_nth_larger_than_length
        l = SingleList.new("head")
        l.append(SingleList.new("second"))
        l.next.append(SingleList.new("third"))
        l.next.next.append(SingleList.new("last"))

        assert_equal nil, l.nth(5)
    end
end
