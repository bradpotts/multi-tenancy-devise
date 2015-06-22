require_dependency "subengine/application_controller"

module Subengine
  class WelcomeController < ApplicationController
    before_filter :redirect_logged_in_users_to_account_page

    def index
    end
  end
end
