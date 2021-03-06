class Subscribe < ActiveRecord::Base
  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX	=	/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50},
      format: {with: VALID_EMAIL_REGEX}, uniqueness:	{case_sensitive:	false}
  validates :country, presence: true, length:{maximum: 50}
  validates :company, length:{maximum: 100}
  validates :turnover, length: {maximum: 50}
  # validates :no_employees, in: 1..1000000
end
