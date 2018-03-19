class PagesController < ApplicationController
  def home
    @posts = BlogTest.all
  end

  def about
  end

  def contact
  end
end
