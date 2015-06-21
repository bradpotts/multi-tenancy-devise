class ThingsController < ApplicationController
  def index
    @things = Thing.scoped_to(current_account)
  end
end
