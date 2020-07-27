class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
    def initialize()
        super()
        @APP_TITLE = "항개발"
    end
end
