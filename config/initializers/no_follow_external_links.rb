Rails.configuration.to_prepare do
  ApplicationHelper.class_eval do
    def link_to(name, options = {}, html_options = {})
      html_options.merge!(rel: :nofollow) unless internal_url? options
      super(name, options, html_options)
    end

    private

    def internal_url?(url)
      return true unless self.respond_to? :root_url
      url.try(:first) == '/' || url.try(:include?, root_url)
    end
  end
end
