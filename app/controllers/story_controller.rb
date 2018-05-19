class StoryController < ApplicationController
  def index
    @stories = Story.all
    render json: @stories
  end
end