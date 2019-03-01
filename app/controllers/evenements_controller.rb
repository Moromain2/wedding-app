class EvenementsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @evenements = Evenement.all
  end

  def show
    @evenement = Evenement.find(params[:id])
  end

  def new
    @evenement = Evenement.new
  end

  def create
    @evenement = Evenement.new(evenement_params)
    @evenement.save
    if @evenement.save
      redirect_to @evenement
    else
      render 'new'
    end
  end

  def edit
    @evenement = Evenement.find(params[:id])
  end

  def update
    @evenement = Evenement.find(params[:id])
    if @evenement.update(evenement_params)
      redirect_to @evenement
    else
      render 'edit'
    end
  end

  def destroy
    @evenement = Evenement.find(params[:id])
    @evenement.destroy
    redirect_to admin_admin_events_path
  end

  private
  def evenement_params
    params.require(:evenement).permit(:title, :description, :adress, :city, :zipcode, :date, :time)
  end

end
