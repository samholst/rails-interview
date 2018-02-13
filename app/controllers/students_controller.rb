class StudentsController < ApplicationController
  def index
    @students = Student.select(:firstname, :lastname, :favoritemovie)
    @name_count = Student.all.group(:firstname).count
  end
end
