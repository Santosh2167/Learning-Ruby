require_relative'../splitter'

describe "Splitter" do
    it "should equal 2" do
        expected = 2
        actual = 1 + 1
        expect(actual).to eq expected
    end

    it "should not equal 2" do 
        expected = 0
        actual = 1 + 1
        expect(actual).to_not eq expected 
    end

    it "should exit" do
        spliter = Splitter.new
        expect(splitter).to be_an_instance_of splitter
    end

    it "should accept a string" do
        splitter = Splitter.new "hello world"
        expect(splitter).to be_an_instance_of Splitter

    end

    it "should respond to to_s" do
        splitter = Splitter.new
        expect(splitter).to respond_to :tp_s
    end

    it "should have to_s that equals the inital value" do
    string = "hello world"
    
    splitter = Splitter. new expected 
    expect(splitter.to_s).to eq expected   
end 