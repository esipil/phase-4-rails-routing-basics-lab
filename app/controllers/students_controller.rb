class StudentsController < ApplicationController

    def index 
        student = Student.all
        render json: student
    end

    def grades
        grade = Student.all.order('grade DESC')
        render json: grade
    end

    def highest_grade 
        highest_student = Student.order("grade DESC").first
        render json: highest_student
    end

end
