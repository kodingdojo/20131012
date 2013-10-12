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
        while pointer.has_next?
            pointer = pointer.next
        end
        pointer
    end

    def nth(n)
        pointer = self
        (1..n).each do
            if pointer.has_next?
                pointer = pointer.next
            else
                pointer = nil
                break
            end
        end
        pointer
    end

    def length
        pointer = self
        count = 1
        while pointer.has_next?
            pointer = pointer.next
            count += 1
        end
        count
    end

    def has_next?
        self.next != nil
    end

    def fifth_from_last
        if length >= 5
            nth(length - 5)
        else
            nil
        end
    end
end


class TestFifthFromLast < Minitest::Test
    def test_empty_list
        l = SingleList.new
        assert_equal nil, l.fifth_from_last
    end

    def test_list_with_5_members
        l = SingleList.new("first")
        l.append SingleList.new("second")
        l.nth(1).append SingleList.new("third")
        l.nth(2).append SingleList.new("forth")
        l.nth(3).append SingleList.new("fifth")

        assert_equal "first", l.fifth_from_last.data
    end

    def test_list_with_6_members
        l = SingleList.new("first")
        l.append SingleList.new("second")
        l.nth(1).append SingleList.new("third")
        l.nth(2).append SingleList.new("forth")
        l.nth(3).append SingleList.new("fifth")
        l.nth(4).append SingleList.new("sixth")

        assert_equal "second", l.fifth_from_last.data
    end

    def test_list_with_7_members
        l = SingleList.new("first")
        l.append SingleList.new("second")
        l.nth(1).append SingleList.new("third")
        l.nth(2).append SingleList.new("forth")
        l.nth(3).append SingleList.new("fifth")
        l.nth(4).append SingleList.new("sixth")
        l.nth(5).append SingleList.new("seventh")

        assert_equal "third", l.fifth_from_last.data
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

    def test_length
        l = SingleList.new("head")
        l.append(SingleList.new("second"))
        l.next.append(SingleList.new("third"))
        l.next.next.append(SingleList.new("last"))

        assert_equal 4, l.length
    end

    def test_has_next
        l = SingleList.new("head")

        assert_equal false, l.has_next?
    end
end
