class ContentController < ApplicationController
  def create
    @content = Content.new(content: params[:content])
    if @content.save
      render json: @content
    else 
      render json: @content.errors
    end
  end
end
