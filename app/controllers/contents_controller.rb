class ContentsController < ApplicationController
    def initialize()
        super()
    end

    def free
        @APP_TITLE += "-Free"
    end

    def introduce
        @APP_TITLE += "-Introduce"
    end
end
