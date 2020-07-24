class ContentsController < ApplicationController
    def initialize()
        super()
        @CONTENTS_NAME = ""
        @CONTENTS_INDEX
    end

    def contents
        @CONTENTS_INDEX = params[:index].to_i
        @CONTENTS_NAME = @lang_name[@CONTENTS_INDEX]
        @APP_TITLE += "-CONTENTS(#{@CONTENTS_NAME})"
    end
end
