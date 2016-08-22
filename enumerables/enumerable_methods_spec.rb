require 'enumerable_methods'

describe 'Enumerable Methods Tests' do
  before do
    @a = [1,3,2,4,5,7,10]
  end
  describe 'my_each' do
    it 'should yield each element of the enumerable to the block' do
      b = Array.new
      @a.my_each{|i| b << i*i}
      expect(b).to eq [1,9,4,16,25,49,100]
    end

    it 'should return self if no block given' do
      expect(@a.my_each).to eq([1,3,2,4,5,7,10])
    end
  end

  describe 'my_each_with_index' do
    it 'should return each element with index' do
      c = Array.new
      @a.my_each_with_index { |val, i| c << [val, i] }

      expect(c).to eq([[1,0], [3,1], [2, 2], [4, 3], [5, 4], [7, 5], [10, 6]])
    end

    it 'should return itself if no block given' do
      expect(@a.my_each_with_index).to eq([1,3,2,4,5,7,10])
    end
  end

  describe 'my_select' do
    it 'should return the selected elements' do
      expect(@a.my_select { |num| num % 2 == 0 }).to eq([2,4,10])
    end

    it 'selects letters beginning with vowels' do
      expect(%w(dog alligator elephant rhino).my_select { |w| w[0] =~ /[aeiou]/ }).to eq(%w(alligator elephant))
    end

    it 'should return itself if no block given' do
      expect(@a.my_select).to eq(@a)
    end
  end
end

