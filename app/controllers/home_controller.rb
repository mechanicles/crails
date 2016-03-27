class HomeController < ApplicationController

  before_filter :check_before_filter_works_or_not

  # caches for 30 seconds, but not for json request
  caches_action :index, if: Proc.new { !request.format.json? }, expires_in: 30.seconds

  def index
    if request.format.json?
      render json: { text: "home page" }
    else
      render
    end
  end

  private

  def check_before_filter_works_or_not
    logger.info(">>>> Before filter worked properly ¯\\_(ツ)_/¯ Yay! <<<< ")
  end

end
