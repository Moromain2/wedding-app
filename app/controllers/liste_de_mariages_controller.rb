class ListeDeMariagesController < ApplicationController

  def index
    @liste_de_mariages = ListeDeMariage.all
  end

  def new
    @liste_de_mariage = ListeDeMariage.new
  end

  def create
    @liste_de_mariage = ListeDeMariage.new(liste_de_mariage_params)
    @liste_de_mariage.save
    if @liste_de_mariage.save
      redirect_to liste_de_mariages_path
    else
      render 'new'
    end
  end

  def edit
    @liste_de_mariage = ListeDeMariage.find(params[:id])
  end

  def update
    @liste_de_mariage = ListeDeMariage.find(params[:id])
    if @liste_de_mariage.update(liste_de_mariage_params)
      redirect_to liste_de_mariages_path
    else
      render 'edit'
    end
  end

  def destroy
    @liste_de_mariage = ListeDeMariage.find(params[:id])
    @liste_de_mariage.destroy
    redirect_to admin_admin_lists_path
  end

  private
  def liste_de_mariage_params
    params.require(:liste_de_mariage).permit(:title, :link, :description)
  end

end
