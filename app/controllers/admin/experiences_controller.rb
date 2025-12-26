module Admin
class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[ update destroy ]

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to admin_root_path, notice: "Experience was successfully created."
    else
      redirect_to admin_root_path, alert: "Experience creation failed: #{@experience.errors.full_messages.join(', ')}"
    end
  end

  def update
    if @experience.update(experience_params)
      redirect_to admin_root_path, notice: "Experience was successfully updated."
    else
      redirect_to admin_root_path, alert: "Experience update failed."
    end
  end

  def destroy
    @experience.destroy!
    redirect_to admin_root_path, notice: "Experience was successfully destroyed."
  end

  private
    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:title, :organization, :url, :start, :end, :location, :description)
    end
end
end
