require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    before(:each) do
        @course = Course.new("Calculus", 2)
    end

    describe '#exists' do
        it 'exists and has readable attributes' do
            expect(@course.name).to eq "Calculus"
            expect(@course.capacity).to eq 2
            expect(@course.students).to eq([]) 
            expect(@course.full?).to eq false
        end
    end

    describe '#students' do
        it 'has students' do
            @student1 = Student.new({name: "Morgan", age: 21})
            @student2 = Student.new({name: "Jordan", age: 29})  
        end
    end

    describe '#enroll' do
        it 'can enroll students' do
            @course.enroll(@student1) 
            @course.enroll(@student2) 

            expect(@course.students).to eq([@student1, @student2])
        end
    end

    describe '#full' do
        it 'can be full' do
            expect(@course.full?).to eq true
        end
    end

end