class MediaHouse < ApplicationRecord
  after_create :create_tenant
  before_create :create_url

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	private
		def create_tenant
			Apartment::Tenant.create(subdomain)
		end

    def create_url
     self.url = "http://" + self.subdomain + ".lvh.me:3000"
    end
end
