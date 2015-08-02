class User < ActiveRecord::Base
  rolify
  
  has_secure_password
  has_attached_file :avatar,
                    :styles => { :medium => "300x300>", :thumb => "100x100>"},
                    :default_url => "/image/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\z/
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
  
  validates :nickname,
            :presence => { :on => :create },
            :length   => { :minimum => 1, :maximum=> 20}
  validates :age,
            :presence => { :on => :create },
            :length   => { :minimum => 1, :maximum=> 3}
  validates :phone,
            :presence => { :on => :create },
            :length   => { :minimum => 8, :maximum=> 13}
end
