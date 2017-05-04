class SubdomainConstraints

  def self.matches?(request)
    request.subdomain.present? && request.subdomain != 'www'
  end

end

Rails.application.routes.draw do

  devise_for :media_houses, :controllers => { registrations: 'registrations' }
  constraints SubdomainConstraints do
    resources :tasks
    resources :workers
    root 'welcome#index'
  end



end
