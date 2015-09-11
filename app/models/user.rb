require 'digest/sha1'
require 'digest/md5'
class User < ActiveRecord::Base
  attr_accessor :email, :username, :password, :password_confirmation, :password_salt
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create
  validates_presence_of :username, :on => :create
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  
  

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def self.encrypt(password, password_salt)
    Digest::SHA1.hexdigest("--#{password_salt}--#{password}--")
  end

  def encrypt(password)
    self.class.encrypt(password, password_salt)
  end

  def encrypt_password
     return if password.blank?
    self.password_salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{email}--") if new_record?
    #self.encrypt_password = encrypt(password)
  end

  def self.authenticate_by_email(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

def self.authenticate_by_username(username, password)
  user = find_by_username(username)
  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
    user
  else
    nil
  end
end
end
