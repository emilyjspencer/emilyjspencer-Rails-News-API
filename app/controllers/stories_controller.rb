class StoriesController < ApplicationController
    def top
      @start = (params[:start] || 0).to_i
      @per_page = (params[:per_page] || 10).to_i
      @per_page = [@per_page, 20].min 
      @stories = client.topstories(@start, @per_page)
    end
end  