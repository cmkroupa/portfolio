module Admin
class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ update destroy ]

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to admin_root_path, notice: "Skill was successfully created."
    else
      redirect_to admin_root_path, alert: "Skill creation failed: #{@skill.errors.full_messages.join(', ')}"
    end
  end

  def update
    if @skill.update(skill_params)
      redirect_to admin_root_path, notice: "Skill was successfully updated."
    else
      redirect_to admin_root_path, alert: "Skill update failed."
    end
  end

  def destroy
    @skill.destroy!
    redirect_to admin_root_path, notice: "Skill was successfully destroyed."
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:title, :tag)
    end
end
end
