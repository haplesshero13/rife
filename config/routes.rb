Rails.application.routes.draw do
  resource :script, only: :show
end
