require 'rspec'
require './lib/student'

RSpec.describe Student do
    before(:each) do
        @student = Student.new({name: "Morgan", age: 21})  
    end

    describe '#exists' do
        it 'exists and has readable attributes' do
            expect(@student.name).to eq "Morgan"
            expect(@student.age).to eq 21
            expect(@student.scores).to eq([])
        end
    end

    describe '#logs_scores' do
        xit 'can log scores' do
            @student.log_score(89)
            @student.log_score(78)

            expect(@student.scores).to eq([89, 78])
        end
    end

    describe '#grade' do
        xit 'can average the scores' do
            expect(@student.grade).to eq 83.5
        end
    end
  
end