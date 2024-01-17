Rails.application.routes.draw do
  get '/invoice/:id', to: 'invoices#show'
  get '/prescription/:id', to: 'prescription#show'
end
