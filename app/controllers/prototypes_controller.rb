class PrototypesController < ApplicationController
  def index
    @prototype = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  # def create
  #   # @tweet = Tweet.new
  # end

  def create
    # Prototype.create(prototype_params)
    # @user = User.find(params[:user_id])
    # @prototype = @user.prototype.new(prototype_params)
    @prototype = Prototype.new(prototype_params)
    if @prototype.save 
      redirect_to root_path(@user)
    else
      render :new
    end
  end

  def show
    # @prototype = Prototype.find(params[:id])  
    # @prototype = Prototype.find(prototype_params[:id])
    @prototype = Prototype.find(params[:id])
    # @prototype = Prototype.find(prototype_params)
  end

  private  # private以下の記述はすべてプライベートメソッドになる

  def prototype_params
    # params.require(:prototype).permit(:title,:catch_copy,:concept,image).marge(user_id current_user.id)
    # params.require(:prototype).permit(:title,:catch_copy,:concept).marge(user_id current_user.id)
    params.require(:prototype).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end

  def private_method  # プライベートメソッド
    # （処理）
  end

  def any_method  # プライベートメソッド
    # （処理）
  end

end
