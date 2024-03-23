Rails.application.routes.draw do
  root "application#hello"
  get '/invoice/:id', to: 'invoices#show'
  get '/prescription/:id', to: 'prescriptions#show'
end
