class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  before_create { generate_token(:auth_token) }

  has_many :assignments 
  has_many :roles, :through => :assignments 
    
  validates_uniqueness_of :username, :email
  validates :email, :email_format => true
    
    def role_symbols
      roles.map do |role|
       role.name.underscore.to_sym
      end
    end


  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
# == Schema Information
#
# Table name: users
#
#  id                     :integer(4)      not null, primary key
#  member_id              :integer(4)
#  email                  :string(255)
#  password_digest        :string(255)
#  username               :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  auth_token             :string(255)
#  password_reset_token   :string(255)
#  password_reset_sent_at :datetime
#

