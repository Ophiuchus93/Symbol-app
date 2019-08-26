class LogosController < ApplicationController
  before_action :set_logo, only: [:show, :edit, :update, :destroy]
  def index
    @logos = current_user.logos
  end

  def show
  end

  def new
    @logo = Logo.new
    render partial: "form"
  end

  def create
    @logo = current_user.logos.new(logo_params)
    if @logo.save
      redirect_to logos_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @logo.update(logo_params)
      redirect_to logos_path
    else
      render :edit
    end
  end
  
  def destroy
    @logo.destroy
    redirect_to logos_path
  end

  private
    def logo_params
      params.require(:logo).permit(:name, :tradition)
    end

    def set_logo
      @logo = current_user.logos.find(params[:id])
    end
end
