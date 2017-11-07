class Moussaillon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gossips

#méthode pour filtrer l'accès au site
  # before_validation :whitelisted

  # def whitelisted
  #   unless moussaillon.email.include? email
  #     errors.add :email, "#{email} n'est pas sur la liste de personnes autorisées"  
  #   end
  # end

# autre méthode pour filtrer l'accès au site
   # attr_accessor :sign_up_code 
   # validates :sign_up_code,
   # on: :create,
   # presence: true,
   # inclusion: { in:["your_code"]}
  
end
