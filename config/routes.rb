Shouter::Application.routes.draw do
  # https://github.com/thoughtbot/clearance/tree/v1.0.0.rc7
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'dashboards#show'
  end

  root to: "homes#show" 

  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
end
