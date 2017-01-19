module NoFollowExternalLinks
  class Engine < ::Rails::Engine
    isolate_namespace NoFollowExternalLinks

    config.generators do |generator|
      generator.test_framework :rspec, fixture: false
      generator.assets false
      generator.helper false
    end
  end
end
