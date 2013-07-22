class ApplicationController < ActionController::Base
  protect_from_forgery

  def diff
     @lines = SideDiff.new.compare_files
  end
end
