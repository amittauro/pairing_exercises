class AssertionList
# write a method #run that iterates through a list of assertions
# and asks each one to run its #check method and then #puts the result.
  # def initialize(tests)
  #   @tests = tests
  # end
  # attr_reader :equal
  def initialize(equal, empty)
    @equal = equal
    @empty = empty
  end
  def run
    #equal = Equal.new(4, 5)
    #empty = Empty.new([])
    #equal = Equal.new(4, 5)
    puts @equal.check
    puts @empty.check
    #puts empty.check
  end
  def create_equal(val1, val2)
    @equal = Equal.new(val1, val2)
  end
  #
  def create_empty(val)
    @empty = Empty.new(val)
  end
end
class Equal
  def initialize(val1, val2)
    @val1 = val1
    @val2 = val2
  end
  def check
    @val1 == @val2
  end
end
class Empty
  def initialize(val)
    @val = val
  end
  def check
    @val.length == 0
  end
end
assertion_list = AssertionList.new(Equal)
assertion_list.create_equal(4, 5)
assertion_list.run
test1 = Equal.new(1, 1)
test2 = Equal.new(1, 2)
test3 = Empty.new([1, 2])
test4 = Empty.new({})
assertion_list = AssertionList.new([test1, test2, test3, test4])
assertion_list.run
true
false
false
true
#
# Further Work
# assertion_list2 = AssertionList.new(Equal, Empty)
# assertion_list2.create_equal(4,5) # creates an instance of Equal and stores it
# assertion_list2.create_empty([])  # creates an instance of Empty and stores it
# assertion_list2.run
# # false
# # true
