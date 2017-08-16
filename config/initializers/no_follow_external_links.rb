require 'byebug'

NoFollowExternalLinks.configure do |config|
  config.excluded_urls = []
end

Rails.configuration.to_prepare do
  ApplicationHelper.class_eval do
    def link_to(name, options = {}, html_options = {})
      html_options.merge!(rel: :nofollow) if add_nofollow? options
      super(name, options, html_options)
    end

    private

    def add_nofollow?(url)
      external_url?(url) && excluded_url?(url)
    end

    def excluded_url?(url)
      !NoFollowExternalLinks.configuration.excluded_urls.include?(url)
    end

    def external_url?(url)
      return false unless self.respond_to? :root_url
      url.try(:first) != '/' && !url.try(:include?, root_url)
    end
  end
end
