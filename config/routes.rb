Rails.application.routes.draw do
  get '/invoice/:id', to: 'invoices#show'
end
