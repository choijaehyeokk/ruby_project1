require 'uri'

class ContentsController < ApplicationController
    def contents
        @APP_TITLE += "-CONTENTS("+params[:name]+")"
        @CONTENTS_NAME = params[:name]
    end
end
