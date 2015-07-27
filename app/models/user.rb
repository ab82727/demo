class User < ActiveRecord::Base
  rolify
  
  has_secure_password 
  validates :name, 
            :presence => { :on => :create }, 
            :exclusion => { :in => %w(admin superuser) } 

  validates :email, 
            :presence => { :on => :create },
            :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }

  validates :password,
            :presence => { :on => :create },
            :length   => { :minimum => 6, :maximum=> 20},
            :confirmation => true 
  validates_confirmation_of :password
end
