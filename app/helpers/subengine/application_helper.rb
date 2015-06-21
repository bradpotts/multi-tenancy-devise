module Subscribem
  module ApplicationHelper
    def alert_class(k)
      alerts = {:success => 'alert-success', :notice => 'alert-success', :alert => 'alert-warning', :error => 'alert-danger'}
      alerts[k.to_sym]
    end
  end
end
