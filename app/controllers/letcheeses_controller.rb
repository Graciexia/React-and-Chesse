class LetcheesesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :allowed_to_modify_addcheese, only: [:edit, :update, :destroy]


  def index
    @letcheeses = Letcheese.all
  end


  def show
    set_letcheese
  end


  def new
    @letcheese = Letcheese.new
  end

  def edit
  end

  def create
    @letcheese = Letcheese.new(letcheese_params)

    respond_to do |format|
      if @letcheese.save
        format.html { redirect_to @letcheese, notice: 'Letcheese was successfully created.' }
        format.json { render :show, status: :created, location: @letcheese }
      else
        format.html { render :new }
        format.json { render json: @letcheese.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @letcheese.update(letcheese_params)
        format.html { redirect_to @letcheese, notice: 'Letcheese was successfully updated.' }
        format.json { render :show, status: :ok, location: @letcheese }
      else
        format.html { render :edit }
        format.json { render json: @letcheese.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @letcheese.destroy
    respond_to do |format|
      format.html { redirect_to letcheeses_url, notice: 'Letcheese was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def set_letcheese
    @letcheese = Letcheese.find(params[:id])
  end

  def letcheese_params
    params.require(:letcheese).permit(:own_cheeses)
  end

  def allowed_to_modify_addcheese
  set_cheese
    if @letcheese.user.id != current_user.id
      redirect_to cheeses_path, alert: "Users can only modify their cheeses."
    end
  end
end
