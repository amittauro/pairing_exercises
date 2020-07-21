class Scrabble

  def initialize(string)
    @string = string
  end

  def score
    if @string == nil
      return 0
    end

    @string.upcase!
    list = {"AEIOULNRST" => 1, "DG" => 2,"BCMP" =>	3, "FHVWY" =>4, "K" => 5, "JX" =>8, "QZ" => 10}
    #first letter is C
    #C is included in BCMP so that means C is = 3
    strings = list.keys
    puts "strings #{strings}"
    puts "find letter A #{strings.select{ |x| x.include?("A")}}"
    findingkey = strings.find{ |x| x.include?("A")}
    puts "list #{list}"
    puts "findingkey #{findingkey}"
    puts "value #{value = list.fetch(findingkey)}"
    puts "actual string #{@string}"
    fkeys = @string.chars.map {|l| strings.find{ |x| x.include?(l)}}
    puts "fkeys #{fkeys}"
    values = fkeys.map {|m| list.fetch(m, 0)}
    values.reduce(0, :+)
    #q Q

  end



end
