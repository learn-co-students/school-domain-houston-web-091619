class School
    attr_accessor :name, :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade_level)
        roster[grade_level] ||= []
        roster[grade_level] << student_name
    end

    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        sorted = {}
        roster.each do |grade_level, student_name|
            sorted[grade_level] = student_name.sort
        end
        sorted
    end

end
