class TechlunchesController < ApplicationController
  helper 'joosy/sprockets'

  def index
    render nothing: true, layout: 'techlunches'
  end
end
