class UserController < ApplicationController
  def like
    likes=Like.all
    time=likes.count-2
    about="{claim:[{"

    for num in 0..time do
      user_name=likes[num].user_name
      like=likes[num].like

      about+="'user_name':#{user_name},'like':'#{like}'}]},"
    end

    user_name=likes[likes.count-1].user_name
    like=likes[likes.count-1].like
    about+="'user_name':#{user_name},'like':'#{like}'}]}"
    about+="]}"

    render :json=>about
  end
end
