
class SchoolClassesController < ApplicationController
	def index
		@school_classes = SchoolClass.all
	end

	def show
		@student = SchoolClass.find(params[:id])
	end

	def new
		@student = SchoolClass.new
	end

	def create
	  @student = SchoolClass.new
	  @student.first_name = params[:first_name]
	  @student.last_name = params[:last_name]
	  @student.save
	  redirect_to student_path(@student)
	end

	def edit
		@student = SchoolClass.find(params[:id])
	end

	def update
	  @student = SchoolClass.find(params[:id])
		@student.update(params.require(:student))
		redirect_to student_path(@student)
	end
end