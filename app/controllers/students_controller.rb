class StudentsController < ApplicationController

    def index 
        student = Student.all
        render json: student
    end

    def grades
        grade = Student.all.order('grade DESC')
        render json: grade
    end
end
