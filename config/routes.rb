Rails.application.routes.draw do
  get 'user/like'

  get 'claims/search'

  get "form/test"=>"form#test"
  get 'form/:id/show'=>"form#show"
  get 'form/complite'=>"form#complite"
  post 'form/submit'=>"form#submit"

  get "claims/search"=>"claims#search"
  get "claims/comment"=>"claims#comment"

  get "user/like"=>"user#like"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
