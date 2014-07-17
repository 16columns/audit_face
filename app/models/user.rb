class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  after_create :send_welcome_email, :user_registered_message
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_name,:mobile_number,:provider,:uid
  # attr_accessible :title, :body
  has_many :audits
  has_many :reports, through: :audits
  has_many :findings, through: :audits
  has_many :activities
  
  
  def gravatar_url
      
      stripped_email = email.strip
      downcased_email = stripped_email.downcase
      hash = Digest::MD5.hexdigest(downcased_email)
      
      "http://gravatar.com/avatar/#{hash}"
      
  end
  
  def create_activity(item, action)
      
      activity = activities.new
      activity.targetable = item
      
      activity.action = action
      activity.save
      activity
  
  end
  def self.weekly_update
      @user = User.all
      @user.each do |u|
        UsersMailer.weekly_mail(u).deliver
    end
  end
   private

    def send_welcome_email
      UserMailer.welcome_email(self).deliver
    end 
  
    def user_registered_message
    AdminMailer.user_registered_message(self).deliver
  end
  def self.connect_to_linkedin(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = User.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else

        user = User.create(
                            provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,20],
                          )
      end

    end
  end   
  
  end
