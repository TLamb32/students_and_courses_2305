# require 'rspec'
require './lib/student'

RSpec.describe Student do
    before(:each) do
        @student = Student.new({name: "Morgan", age: 21})  
    end

    describe '#exists' do
        it 'exists' do
            expect(@student).to be_a(Student)
        end
    end

    describe "#initialize" do
        it 'can initialize with the name, age and scores' do
            expect(@student.name).to eq "Morgan"
            expect(@student.age).to eq 21
            expect(@student.scores).to eq([])
        end
    end

    describe '#logs_scores' do
        it 'can log scores' do
            @student.log_score(89)
            @student.log_score(78)

            expect(@student.scores).to eq([89, 78])
        end
    end

    describe '#grade' do
        it 'can average the scores' do
            @student.log_score(89)
            @student.log_score(78)
            @student.log_score(6)
            expect(@student.grade).to eq 57.7
        end
    end
  
end