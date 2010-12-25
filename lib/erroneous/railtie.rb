require 'erroneous'
require 'rails'

module Erroneous
  class Railtie < Rails::Railtie
    initializer 'erroneous.initialize' do
      ActionView::Helpers.send :include, Erroneous
    end
  end
end