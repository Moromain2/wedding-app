class HebergementsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @hebergements = Hebergement.all
  end

  def show
    @hebergement = Hebergement.find(params[:id])
  end

  def new
    @hebergement = Hebergement.new
  end

  def create
    @hebergement = Hebergement.new(hebergement_params)
    @hebergement.save
    if @hebergement.save
      redirect_to @hebergement
    else
      render 'new'
    end
  end

  def edit
    @hebergement = Hebergement.find(params[:id])
  end

  def update
    @hebergement = Hebergement.find(params[:id])
    if @hebergement.update(hebergement_params)
      redirect_to @hebergement
    else
      render 'edit'
    end
  end

  def destroy
    @hebergement = Hebergement.find(params[:id])
    @hebergement.destroy
    redirect_to admin_admin_accomodations_path
  end

  private
  def hebergement_params
    params.require(:hebergement).permit(:title, :description, :adress, :city, :zipcode, :phonenumber, :email, :website)
  end

end
