class HomeController < ApplicationController
	def index #여기서 만든 index 메서드를 views에 home dir에 index파일을 만들면 이것과 연결이 됨. + route에도 연결을 시켜야함.	
		@APP_TITLE = @APP_TITLE + "-HOME"
	end	
end