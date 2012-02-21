require 'rspec'

describe String do

  context '#to_s' do
    context "When applied to a string" do
      it "returns the same object" do
        a = "hello"
        b = a.to_s
        a.object_id.should == b.object_id
      end
    end
    context "When applied to anything but a string" do
      it "returns a different object, even if the string looks the same" do
        symbol = :hello
        a = symbol.to_s
        b = symbol.to_s
        a.object_id.should_not == b.object_id
      end
    end
  end

  context '+=' do
    it "returns a different object" do
      a = b = "hello"
      a += " world"
      a.object_id.should_not == b.object_id
    end
  end

  context '#clone' do
    it "returns a different object" do
      a = "hello"
      b = a.clone
      a.object_id.should_not == b.object_id
    end
  end


end
