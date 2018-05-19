class ContentController < ApplicationController
  def index
    @contents = Story.find(params[:id]).contents
    render json: @contents
  end

  def create
    story = Story.find(params[:id])
    @content = story.contents.new(content: params[:content])
    if @content.save
      render json: @content
    else
      render json: @content.errors
    end
  end
end