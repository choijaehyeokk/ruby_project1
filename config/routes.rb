Rails.application.routes.draw do

	resources :posts, path: '/languages/:langName' do
		resources :comments
	end

	authenticate :user, lambda { |u| u.admin? } do
		begin
		  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
		rescue
		  redirect_to new_user_session_path
		end
	end
  	devise_for :users
	root to: 'home#index'
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	#'/'로 접속을 하면 home controller의 index action으로 작업을 하도록 만들어라.
	get '/login' => 'users#login'
	get '/free' => 'contents#free'
	get '/introduce' => 'contents#introduce'
	#method가 post방식임. /create url로 이동했을때 액션이 실행되도록, view에는 html파일이 없어도 되는 것.
end
