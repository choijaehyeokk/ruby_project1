class ApplicationController < ActionController::Base
    def initialize()
        super()
        @APP_TITLE = "항개발"
        languages = "C C++ Java Matlab Python"
        @lang_name = languages.split
        @lang_uri = "C C%2B%2B Java Matlab Python".split
        @lang_extension = "c cpp java mat py".split
    end
end
