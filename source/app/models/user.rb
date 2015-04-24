class User < ActiveRecord::Base
  has_many :wishes
  has_many :fulfillments

  validates :meal, :temporality, :creator_id,
            presence: true


  def password=(input_pass)
    self.hashed_password = BCrypt::Password.create(input_pass)
  end

  def password
    @password = BCrypt::Password.new(self.hashed_password)
  end

  def self.authenticate(input_pass, input_email)
    user = User.find_by_email(input_email)
    return user if user && user.password == input_pass
    nil
  end
end
