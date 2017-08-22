require "no_follow_external_links/engine"
require "no_follow_external_links/configuration"

module NoFollowExternalLinks
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
