class Course
    attr_reader :name,
                :capacity,
                :students
                

    def initialize(name, capacity, full = false)
        @name = name
        @capacity = capacity
        @students = []
        @full = full
    end

    def full?
        @full
    end

    def enroll(student)
        @students << student
    end
end
