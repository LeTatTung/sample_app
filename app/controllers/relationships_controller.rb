class RelationshipsController < ApplicationController
  before_action :logged_in_user

  def create
    @user = User.find params[:followed_id]
    current_user.follow @user
    @relation = current_user.active_relationships.find_by followed_id: @user.id
    respond_to do |format|
      format.html {redirect_to @user}
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow @user
    respond_to do |format|
      format.html {redirect_to @user}
      format.js
    end
  end
end
