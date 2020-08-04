class ContentsController < ApplicationController
    def initialize()
        super()
    end

    def contents
        @lang = Language.find_by langName: params[:langName]
        @APP_TITLE += "-CONTENTS(#{@lang.langName})"
    end

    def free
        @APP_TITLE += "-Free"
    end

    def introduce
        @APP_TITLE += "-Introduce"
    end
end
