module Ionicons
  module Rails
    class Engine < ::Rails::Engine
      initializer "ionicons-rails.assets.precompile" do |app|
        unless Sprockets::Rails::VERSION.starts_with?('3')
         app.config.assets.precompile << %r(ionicons\.(?:eot|svg|ttf|woff)$)
       end
      end
    end
  end
end
