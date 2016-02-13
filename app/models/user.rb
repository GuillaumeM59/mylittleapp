class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
has_many :posts, dependent: :destroy
 mount_uploader :avatar, AvatarUploader

 validates_uniqueness_of :username

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         attr_accessible :email,:avatar, :username, :password, :role, :remember_me, :avatar, :avatar_cache, :remove_avatar

        #  validates_presence_of   :avatar
        #  validates_integrity_of  :avatar
        #  validates_processing_of :avatar

end
