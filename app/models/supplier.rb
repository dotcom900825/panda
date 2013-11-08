class Supplier < User
  authenticates_with_sorcery!

  validates_confirmation_of :password
  validates_presence_of :password, on: :create
  validates_uniqueness_of :email

end
