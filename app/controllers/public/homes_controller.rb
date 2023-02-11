class Public::HomesController < ApplicationController

  def top
    
  end

  def about
    @post = Post.new
  end
end
