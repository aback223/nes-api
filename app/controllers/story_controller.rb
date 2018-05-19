class StoryController < ApplicationController
  def index
    @stories = Story.all
    render json: @stories
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      render json: @story
    else
      render json: @story.errors
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :content, :created_at)
  end
end