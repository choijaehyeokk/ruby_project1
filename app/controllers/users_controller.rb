class UsersController < ApplicationController
	def login
		#list에 있는 사용자들 저장되는지 보려고 액션을 추가
		@users = User.all		
	end

end
