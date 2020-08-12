class AssertionList
# write a method #run that iterates through a list of assertions
# and asks each one to run its #check method and then #puts the result.

  # def initialize(list_of_tests)
  #   @list_of_tests = list_of_tests
  #   # p @list_of_tests
  # end

  def initialize(equal_class,empty_class)
    @equal_class = equal_class
    @empty_class = empty_class
    @list_of_tests = []
  end

  # creates an instance of Equal and stores it
  def create_equal(val1,val2)
      @list_of_tests << @equal_class.new(val1,val2)
  end


  # creates an instance of Equal and stores it
  def create_empty(array_to_check)
    @list_of_tests <<  @empty_class.new(array_to_check)
  end




  def run

  # it will calculate all the tests and pass it as argument when we create an instance of the
  # assertion list class
  # p @list_of_tests
    @list_of_tests.each do |test|
      # p test
      p test.check
     end
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
# test1 = Equal.new(1, 1)
# test2 = Equal.new(1, 2)
# test3 = Empty.new([1, 2])
# test4 = Empty.new({})
# test7 = Equal.new(2,4)
# assertion_list = AssertionList.new([test1, test2, test3, test4,test7])
# assertion_list.run

# Further Work
assertion_list2 = AssertionList.new(Equal, Empty)
# assertion_list2.create_equal(4,5) # creates an instance of Equal and stores it
# assertion_list2.create_empty([])  # creates an instance of Empty and stores it
assertion_list2.create_equal(5,5)
assertion_list2.create_empty([2,5])
assertion_list2.run
# false
# true
