class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @profile = Profile.first
    @skills = Skill.with_attached_icon.all
    @projects = Project.with_attached_image.all
    @degrees = Degree.order(graduation: :desc)
    @experiences = Experience.order(start: :desc)
  end
end
