Rails.application.routes.draw do
  scope "(:locale)", locale: /en|zh/ do
    root to: 'visitors#index'
    devise_for :users
    resources :users
    get "india" => "pages#portfolio-india"
    get "brazil" => "pages#portfolio-brazil"
    get "iran" => "pages#portfolio-iran"
    get "eventIndLed" => "pages#eventIndLed"
  end
end
