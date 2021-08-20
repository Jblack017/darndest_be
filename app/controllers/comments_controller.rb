class CommentsController < ApplicationController

    def create
    @new_comment = Comment.create!(kid_id: params[:kid_id], content: params[:content])

    if @new_comment.valid?
      @new_comment.save
      
      return render json: @new_comment, status: :created, except: [:created_at, :updated_at, :kid_id]
    else
      return render json: {error: @new_comment.errors.full_messages}
    end

  end

    def update
    @comment = Comment.find(params[:id])

      if @comment.update(content: params[:content])
      return render status: :accepted, except: [:created_at, :updated_at]
    else
      return render json: {error: @comment.errors.full_messages}
    end
    
  end
  
  def destroy
    @comment = Comment.find(params[:id])

      if @comment.destroy
      return render status: :accepted, except: [:created_at, :updated_at]
    else
      return render json: {error: @comment.errors.full_messages}
    end

  end

end
