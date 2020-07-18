Rails.application.routes.draw do
	root to: 'home#index'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	
	#'/'로 접속을 하면 home controller의 index action으로 작업을 하도록 만들어라.
	get '/login' => 'users#login'
	get '/contents' => 'contents#contents'
	get '/signin' => 'signin#signin'
	get '/success_login' => 'home#index2'
	get '/home/create' =>'home#create'
	post '/create' => 'signin#create'
	#method가 post방식임. /create url로 이동했을때 액션이 실행되도록, view에는 html파일이 없어도 되는 것.
end
