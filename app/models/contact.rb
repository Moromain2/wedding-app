class Contact < ApplicationRecord
  has_one_attached :avatar
  avatar.attach(params[:avatar])
end
