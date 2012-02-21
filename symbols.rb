require 'rspec'

describe "Equal symbols are the same object" do
  context "When created directly" do
    it do
      a = :hello
      b = :hello
      a.object_id.should == b.object_id
    end
  end
  context "When built with to_sym" do
    it do
      a = [:h,:e,:l,:l,:o].join.to_sym
      b = "hello".to_sym
      a.object_id.should == b.object_id
    end
  end
end

describe "Alternative symbol syntax" do
  it "can contain quotes" do
    a = :hello
    b = :"hello"
    a.should == b
  end
  it "can contain spaces and hypens" do
    a = "hello madrid-rb".to_sym
    b = :"hello madrid-rb"
    a.should == b
  end
  it "can contain newlines!" do
    x = "hello\nworld".to_sym
    y = :"hello
world"
    x.should == y
  end
end


