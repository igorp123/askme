class HashtagsController < ApplicationController
  before_action :set_hashtag

  def show

  end

  private

  def set_hashtag
    @hashtag = Hashtag.find_by!(name: params[:name])
  end
end
