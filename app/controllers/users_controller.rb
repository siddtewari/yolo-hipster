class UsersController < ApplicationController
  def show
    @profile = Profile.new(params[:id])
    # @shouts = @user.shouts.current
  end
end