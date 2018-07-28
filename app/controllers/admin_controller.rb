class AdminController < ApplicationController
 
  def index
    @matchers = FromMatcher.all
  end

end
