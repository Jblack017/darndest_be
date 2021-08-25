class KidsController < ApplicationController

  def index
    @kids = Kid.all

    render json: @kids, 
    except: [:created_at, :updated_at], 
    :include => { :comments => {:except => [:created_at, :updated_at, :kid_id]}}
  end

  def show
    @kid = Kid.find(params[:id])

    render json: @kid, 
    except: [:created_at, :updated_at], 
    :include => { :comments => {:except => [:created_at, :updated_at, :kid_id]}}
  end

  def update
    @kid = Kid.find(params[:id])

      if @kid
        age = params[:age] ? params[:age] : @kid.age
        name = params[:name] ? params[:name] : @kid.name
        @kid.update(name: name, age: age)

      return render status: :accepted, except: [:created_at, :updated_at]
    else
      return render json: {error: @kid.errors.full_messages}
    end
    
  end

  def create
    @new_kid = Kid.create!(name: params[:name], age: params[:age])

    if @new_kid.valid?
      @new_kid.save
      
      return render json: @new_kid, status: :created, except: [:created_at, :updated_at], include: :comments
    else
      return render json: {error: @new_kid.errors.full_messages,}
    end

  end

  def destroy
    @kid = Kid.find(params[:id])

    if @kid
      @kid.destroy
      
      return render status: :accepted
    else
      return render status: :not_found
    end

  end

end
