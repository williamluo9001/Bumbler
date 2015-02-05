class WelcomeController < ApplicationController
  def index
  	@posts = Post.last(10).reverse
  end
end
