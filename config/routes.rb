Rails.application.routes.draw do
  scope "(:locale)", locale: /en|zh/ do
    root to: 'visitors#index'
    devise_for :users
    resources :users
    get "notice" => "pages#notice"
    get "india" => "pages#portfolio-india"
    get "brazil" => "pages#portfolio-brazil"
    get "iran" => "pages#portfolio-iran"
    get "trip" => "pages#trip"
    get "agency" => "pages#agency"
    get "eventIndLed" => "pages#eventIndLed"
  end
end
