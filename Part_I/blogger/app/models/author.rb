class Author < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
