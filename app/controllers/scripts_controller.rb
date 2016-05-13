class ScriptsController < ApplicationController
  def show
    render json: Script.new(File.join(Rails.root, 'script.yml'))
  end
end
