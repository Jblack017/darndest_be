class FathersController < ApplicationController

  def index
    @fathers = Father.all

    render json: @fathers
  end

  def show
    @father = Father.find(params[:id])

    render json: @father
  end

  def create
    @new_father = Father.create!(name: params[:name])

    if @new_father.valid?
      @new_father.save
      
      return render json: @new_father, status: :created
    else
      return render json: {error: @new_father.errors.full_messages,}
    end

  end


end
