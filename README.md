# NoFollowExternalLinks
Links that point to external urls are recommended to include a rel=nofollow property to make sure the crawler bots do not follow the content of external resources as your own.
This plugin makes it easy to implement that for all existing links on a Rails application.

## Usage
This plugin will automatically add a nofollow rel property to all the external links you create using Rails `link_to` method
If you need to add an exception for instance for your own personal blog within a subdomain just add an intializer with the following:

```
NoFollowExternalLinks.configure do |config|
  config.excluded_urls = %w{https://blog.mydomain.com/}
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'no_follow_external_links'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install no_follow_external_links
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
