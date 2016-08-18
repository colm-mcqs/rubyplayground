class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @numYears = 0
  end

  def countTheOranges
    puts @oranges
  end

  def pickOrange
    if @oranges > 0
      puts 'That orange was savage'
      @oranges -=1
      return puts 'There are '+@oranges.to_s+ ' oranges left on the tree.'
    end
    puts 'No oranges left. :('
  end

  def looking?
    puts 'Tree is '+@numYears.to_s+' years old and has '+@oranges.to_s+' oranges'
  end

  def ticktock
    oneYearPasses
  end

  private
  def oneYearPasses
    @numYears += 1
    if @numYears >= 10
      puts 'This tree is gnarled and withers...'
      exit
    end
    @height+=1
    @oranges = 0
    if(@numYears > 3)
      @oranges = @numYears*3
    end
    puts "One Year Passes... The tree grows...."
  end
end

tree = OrangeTree.new
tree.looking?
tree.ticktock
tree.ticktock
tree.ticktock
tree.ticktock
tree.ticktock
tree.pickOrange
tree.looking?

tree.ticktock
tree.ticktock
tree.ticktock
tree.ticktock
tree.ticktock
tree.ticktock

tree.looking?
