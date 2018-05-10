class StoryContentController < ApplicationController
  def index
    @contents = StoryContent.all
    render json: @contents
  end

  def create
    @content = StoryContent.new(content_params)
    if @content.save
      render json: @content
    else
      render json: @content.errors
    end
  end

  private

  def content_params
    params.require(:story_content).permit(:created_at, :content)
  end
end