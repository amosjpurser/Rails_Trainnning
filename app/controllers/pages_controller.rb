class PagesController < ApplicationController
  def home
    @posts = BlogTest.all
	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
