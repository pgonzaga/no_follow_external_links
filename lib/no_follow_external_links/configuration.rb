module NoFollowExternalLinks
  class Configuration
    attr_accessor :excluded_urls

    def initialize
      @excluded_urls = []
    end
  end
end
