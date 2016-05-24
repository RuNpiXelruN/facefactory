class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.profile
        @profile = current_user.profile
        @status_update = StatusUpdate.new
        @all_status_updates = StatusUpdate.all
      else
        @profile = Profile.new
      end
    end
  end
end
