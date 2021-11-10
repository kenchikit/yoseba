Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home
  root 'home#index' #トップページをhomeコントローラのindexアクションに設定
  get '/' => 'home#index'
  get 'comedian/:name' => 'comedian#detail'
  get 'tag/:tag_name' => 'tags#tag'
  get 'tags' => 'tags#tags'
  get 'search' => 'search#index'
  get 'offices' => 'offices#index'
end
