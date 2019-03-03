class PagesController < ApplicationController
  def home
    @hebergements = Hebergement.all
    @evenements = Evenement.order(:date, :time)
    @liste_de_mariages = ListeDeMariage.all
    @contacts = Contact.all
  end

  def acces
  end
end
