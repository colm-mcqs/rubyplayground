require 'bubble_sort'


describe "==>Advanced Building Blocks Project 1: Bubble-Sort" do
  describe "#Basic bubble sort given examples" do
    it "deals with basic given case" do
      expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
    end

    it "deals with basic given case with passing in a block" do
      expect(bubble_sort_by(["hi","hello","hey"]) { |l,r| r.length - l.length } ).to eq (["hi", "hey", "hello"])
    end
  end
  describe "#My numeric tests, without passing in a block" do
    it "deals with empty array" do
     expect(bubble_sort([])).to eq([])
    end
    it "deals with 1 element array" do
      expect(bubble_sort([3])).to eq([3])
    end
    it "deals with 2 element array" do
      expect(bubble_sort([3,1])).to eq([1,3])
    end
    it "deals with a completely backward list" do
      expect(bubble_sort([5,4,3,2,1])).to eq([1,2,3,4,5])
    end
  end
  describe "#My numeric tests, passing in a block" do
    it "deals with empty array" do
      expect( bubble_sort_by([]) { |a,b| b-a } ).to eq ([])
    end
    it "deals with 2 element array" do
      expect( bubble_sort_by([3,1]) { |a,b| b-a } ).to eq ([1,3])
    end
    it "deals with complex list" do
      expect( bubble_sort_by([5,4, 32, 3,2,999, 23, 1]) { |a,b| b-a } ).to eq ([1,2,3,4,5,23,32,999])
    end
    it "deals with complex list backwards" do
      expect( bubble_sort_by([5,4, 32, 3,2,999, 23, 1]) { |a,b| a-b } ).to eq ([999,32,23,5,4,3,2,1])
    end
  end
end