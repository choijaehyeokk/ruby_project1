class ContentsController < ApplicationController
    def initialize()
        super()
    end

    def contents
        @lang = Language.find_by langName: params[:langName]
        @APP_TITLE += "-CONTENTS(#{@lang.langName})"
    end
end
