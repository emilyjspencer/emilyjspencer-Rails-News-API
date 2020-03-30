class StoriesController < ApplicationController
    def top
      @stories = client.topstories(0, 20)
    end
end  