require_dependency "subengine/application_controller"

module Subengine
  class Account::DashboardController < Subengine::ApplicationController

    before_action :authenticate_user!

    def index
    end

  end
end
