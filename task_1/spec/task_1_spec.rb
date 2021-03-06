require 'task_1'

describe "my_inject (iterators)" do

  it "should perform the correct operation on the array" do
    a = [1,2,3,4]
    expect(a.my_inject {|sum, n| sum + n }).to eq(10)
    expect(a.my_inject {|sum, n| sum + n * 3 }).to eq(30)
  end

  it "should allow to change the initial memory value" do
    a = [1,2,3,4]
    expect(a.my_inject {|sum, n| sum + n }).to eq(10)
    expect(a.my_inject(5) {|sum, n| sum + n }).to eq(15)
  end

end