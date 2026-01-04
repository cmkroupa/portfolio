class PagesController < ApplicationController
  def home
    @projects = Project.all
    @experiences = Experience.all
    @courses = Course.all
    @devs = Dev.all
    @about_text = Item.get("about_me")
  end
end
