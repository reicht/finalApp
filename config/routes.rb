Rails.application.routes.draw do

  get 'watches/create'

  constraints Clearance::Constraints::SignedIn.new do

    delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"

    root 'dashboard#home'

    resources :users
    resources :breeds, only: [:show, :index]
    resources :groups, only: [:show, :index]

    get "/dogs" => "dashboard#dogs", as: "dogs_page"
    get "/contact" => "dashboard#contact", as: "contact_page"
    get "/purpose" => "dashboard#purpose", as: "purpose_pge"

    post "/watches" => "watches#create"

    resources :organizations, only: [:show, :index]
    resources :dogs, only: [:show, :index]


    resources :passwords, controller: "clearance/passwords", only: [:create, :new]
    resource :session, controller: "clearance/sessions", only: [:create]

    resources :users, controller: "clearance/users", only: [:create] do
      resource :password,
        controller: "clearance/passwords",
        only: [:create, :edit, :update]
    end
  end

  constraints Clearance::Constraints::SignedOut.new do
    get "/sign_in" => "clearance/sessions#new", as: "sign_in"
    get "/sign_up" => "clearance/users#new", as: "sign_up"

    root "clearance/sessions#new", as: :guest_root

    resources :passwords, controller: "clearance/passwords", only: [:create, :new]
    resource :session, controller: "clearance/sessions", only: [:create]

    resources :users, only: [:new, :create]

    resources :users, controller: "clearance/users", except: [:create] do
      resource :password,
        controller: "clearance/passwords",
        only: [:create, :edit, :update]
    end

  end

end
