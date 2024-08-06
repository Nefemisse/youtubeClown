class PagesController < ApplicationController
  def media
    if user_signed_in?
      @posts = current_user.posts
      if @posts.empty?
        @message = "Did you forgot something ?"
      else
        @message = "Here we are!"
      end
    end
  end
end
