# spec/node_spec.rb
require "./lib/main/node"

describe Node do
  describe "#initialize" do
    it "has a default value of 'empty'" do
      node = Node.new
      expect(node.value).to eq("empty")
    end
  end
end
