class PagesController < ApplicationController
  
  def index
    @gb = Gibbon::API.new('7b5bde2b6b1568a1f6579e2f62363eea-us3')
    lists_res = @gb.lists.list
    @lists = lists_res['data']
  end
  
end
