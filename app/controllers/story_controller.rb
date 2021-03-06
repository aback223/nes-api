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

  def show
    @story = Story.find(params[:id])
    render json: @story
  end

  private

  def story_params
    params.require(:story).permit(:title, :created_at)
  end
end