class Company < ApplicationRecord
  after_create :create_tenant
  before_create :create_url
  has_many :workers
	private

		def create_tenant
			Apartment::Tenant.create(subdomain)
		end

    def create_url
      self.url = "http://" + self.subdomain + ".lvh.me:3000"
    end
end
