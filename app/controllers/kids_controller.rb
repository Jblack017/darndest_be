class KidsController < ApplicationController

  def index
    @kids = Kid.all

    render json: @kids, 
    methods: :age, 
    except: [:created_at, :updated_at], 
    :include => {:comments => {:except => [:created_at, :updated_at]}}

  end

  def show
    @kid = Kid.find(params[:id])

    render json: @kid, methods: :age, 
    :include => {:comments => {:except => [:created_at, :updated_at]}}

  end

  def update
    @kid = Kid.find(params[:id])

      if @kid
        name = params[:name] ? params[:name] : @kid.name
        nickname = params[:nickname] ? params[:nickname] : @kid.nickname
        birthday = params[:birthday] ? params[:birthday] : @kid.birthday
        @kid.update(name: name, nickname: nickname, birthday: birthday)

      return render status: :accepted, except: [:created_at, :updated_at]

    else
      return render json: {error: @kid.errors.full_messages}

    end
    
  end

  def create
    @new_kid = Kid.create!(name: params[:name], nickname: params[:nickname], birthday: params[:birthday])

    if @new_kid.valid?
      @new_kid.save
      
      return render json: @new_kid, 
      status: :created, 
      except: [:created_at, :updated_at], 
      include: :comments, methods: :age

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
