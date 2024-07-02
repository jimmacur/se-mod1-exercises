require "./lib/student"
require "rspec"
# Add the 2 requires you will need here


describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new("Jim")
      expect(student).to be_a Student
      # write the code to initialize a new student object
    end
    
    it 'has a name' do
      student = Student.new("Jim")
      expect(student.name).to eq("Jim")
    end

    it 'has cookies' do
      student = Student.new("Jim")
      expect(student.cookies).to eq []
    end

    it 'can add cookies' do
      student = Student.new("Jim")
      student.add_cookie("Chocolate Chip")
      student.add_cookie("Thin Mint")
      expect(student.cookies).to eq ["Chocolate Chip", "Thin Mint"]
    end
    # test it can add cookies
  end
end
