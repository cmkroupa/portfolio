module Admin
class DegreesController < ApplicationController
  before_action :set_degree, only: %i[ update destroy ]

  def create
    @degree = Degree.new(degree_params)
    if @degree.save
      redirect_to admin_root_path, notice: "Degree was successfully created."
    else
      redirect_to admin_root_path, alert: "Degree creation failed: #{@degree.errors.full_messages.join(', ')}"
    end
  end

  def update
    if @degree.update(degree_params)
      redirect_to admin_root_path, notice: "Degree was successfully updated."
    else
      redirect_to admin_root_path, alert: "Degree update failed."
    end
  end

  def destroy
    @degree.destroy!
    redirect_to admin_root_path, notice: "Degree was successfully destroyed."
  end

  private
    def set_degree
      @degree = Degree.find(params[:id])
    end

    def degree_params
      params.require(:degree).permit(:title, :graduation, :description)
    end
end
end
