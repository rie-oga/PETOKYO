Rails.application.routes.draw do
	devise_for :admins, controllers: {
      sessions: 'admin/sessions',
      registrations: 'admin/registrations',
      passwords: 'admin/passwords'
    }
    devise_for :members, controllers: {
      sessions: 'member/sessions',
      registrations: 'member/registrations',
      passwords: 'member/passwords'
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
