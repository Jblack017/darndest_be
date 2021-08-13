class FathersController < ApplicationController

  def index
    @fathers = Father.all

    render json: @fathers
  end
end
