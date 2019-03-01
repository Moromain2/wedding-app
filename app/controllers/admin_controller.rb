class AdminController < ApplicationController
  def dashboard

  end
  def admin_events
    @evenements = Evenement.all
  end
  def admin_contacts
    @contacts = Contact.all
  end
  def admin_accomodations
    @hebergements = Hebergement.all
  end
  def admin_lists
    @liste_de_mariages = ListeDeMariage.all
  end
end
