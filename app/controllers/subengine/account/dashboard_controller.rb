require_dependency "subengine/application_controller"

module subengine
  class Account::DashboardController < subengine::ApplicationController

    before_action :authenticate_user!

    def index
    end

  end
end
