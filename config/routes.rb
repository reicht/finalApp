Rails.application.routes.draw do

  constraints Clearance::Constraints::SignedIn.new do

    delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"

    root 'dashboard#home'
    post "/watches" => "watches#create"
    delete "/watches" => "watches#destroy"

    resources :users
    resources :breeds, only: [:show, :index]
    resources :groups, only: [:show, :index]

    get "/dogs" => "dashboard#dogs", as: "dogs_page"
    get "/contact" => "dashboard#contact", as: "contact_page"
    get "/purpose" => "dashboard#purpose", as: "purpose_page"
    get "/upcoming" => "dashboard#upcoming", as: "upcoming_page"

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
