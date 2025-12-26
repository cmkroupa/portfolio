module Admin
  class CoursesController < ApplicationController
    before_action :set_degree
    before_action :set_course, only: %i[ show edit update destroy ]

    def index
      @courses = @degree.courses
    end

    def show
    end

    def new
      @course = @degree.courses.build
    end

    def edit
    end

    def create
      @course = @degree.courses.build(course_params)

      respond_to do |format|
        if @course.save
          format.html { redirect_to [ :admin, @degree ], notice: "Course was successfully created." }
          format.json { render :show, status: :created, location: [ :admin, @degree ] }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @course.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @course.update(course_params)
          format.html { redirect_to [ :admin, @degree ], notice: "Course was successfully updated." }
          format.json { render :show, status: :ok, location: [ :admin, @degree ] }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @course.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @course.destroy!

      respond_to do |format|
        format.html { redirect_to [ :admin, @degree ], notice: "Course was successfully destroyed.", status: :see_other }
        format.json { head :no_content }
      end
    end

    private
      def set_degree
        @degree = Degree.find(params[:degree_id])
      end

      def set_course
        @course = @degree.courses.find(params[:id])
      end

      def course_params
        params.expect(course: [ :title, :description ])
      end
  end
end
