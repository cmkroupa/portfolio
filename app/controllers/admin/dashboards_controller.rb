module Admin
  class DashboardsController < ApplicationController
    def index
      @profile = Profile.first || Profile.new
      @skills = Skill.all.order(:tag, :title)
      @projects = Project.all.order(created_at: :desc)
      @experiences = Experience.all.order(start: :desc)
      @degrees = Degree.all.order(graduation: :desc)

      # For forms
      @new_skill = Skill.new
      @new_project = Project.new
      @new_experience = Experience.new
      @new_degree = Degree.new
    end
  end
end
