Rails.application.routes.draw do
  get 'contents/contents'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	get '/' => 'home#index'
	#'/'로 접속을 하면 home controller의 index action으로 작업을 하도록 만들어라.
	get '/login' => 'login#login'
	get '/contents' => 'contents#contents'
end
