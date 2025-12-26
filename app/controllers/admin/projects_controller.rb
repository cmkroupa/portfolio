module Admin
class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ update destroy ]

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_root_path, notice: "Project was successfully created."
    else
      redirect_to admin_root_path, alert: "Project creation failed: #{@project.errors.full_messages.join(', ')}"
    end
  end

  def update
    if @project.update(project_params)
      redirect_to admin_root_path, notice: "Project was successfully updated."
    else
      redirect_to admin_root_path, alert: "Project update failed."
    end
  end

  def destroy
    @project.destroy!
    redirect_to admin_root_path, notice: "Project was successfully destroyed."
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :description, :url)
    end
end
end
