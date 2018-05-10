class StoryContentController < ApplicationController
  def index
    @contents = StoryContent.all
    render json: @contents
  end
end