class NewsController < ApplicationController
	skip_before_action :login_process

  def index
  end

end
