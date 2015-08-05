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

  validates_uniqueness_of :email, 
            :presence => { :on => :create },
            :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }

  validates :password,
            :presence => { :on => :create },
            :length   => { :minimum => 6, :maximum=> 25},
            :confirmation => true 
  validates_confirmation_of :password
  
  validates :nickname,
            :presence => { :on => :create },
            :length   => { :minimum => 1, :maximum=> 20}
 
  validates_uniqueness_of :phone,
            :presence => { :on => :create },
            :length   => { :minimum => 8, :maximum=> 13}
  validates_inclusion_of :other, 
            :in => ["mentor","mentee"], 
            :message => ":錯誤的授權碼"
end
