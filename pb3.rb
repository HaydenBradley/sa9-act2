RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        original_str = "Hello, World!"
        string_wrapper = StringWrapper.new(original_str)
  
        reversed_str = string_wrapper.reverse
  
        expect(reversed_str).to eq(original_str.reverse)
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        original_str = "hello, world!"
        string_wrapper = StringWrapper.new(original_str)
  
        upcased_str = string_wrapper.upcase
  
        expect(upcased_str).to eq(original_str.upcase)
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        original_str = "HELLO, WORLD!"
        string_wrapper = StringWrapper.new(original_str)
  
        downcased_str = string_wrapper.downcase
  
        expect(downcased_str).to eq(original_str.downcase)
      end
    end
  end