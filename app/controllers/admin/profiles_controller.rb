module Admin
  class ProfilesController < ApplicationController
    def update
      @profile = Profile.first || Profile.new

      # Transform structured interests params back into array if they exist
      if params[:profile][:interests_attributes]
        interests_data = params[:profile][:interests_attributes].values
        @profile.interests = interests_data
      end

      if @profile.update(profile_params.except(:interests_attributes))
        redirect_to admin_root_path, notice: "Profile updated successfully."
      else
        redirect_to admin_root_path, alert: "Failed to update profile: #{@profile.errors.full_messages.join(', ')}"
      end
    end

    private

    def profile_params
      params.require(:profile).permit(:name, :story, :gpa, :year_started)
    end
  end
end
