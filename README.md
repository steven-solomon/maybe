# Maybe

Welcome to a very simple implementation of maybe in ruby. There aren't new types, just monkeypatching 🙊.

## Installation

Until, I get more feedback, I'm not doing a formal release. For now, point to the github repo in your Gemfile.

```ruby
# Gemfile
gem 'maybe', git: 'git@github.com:steven-solomon/maybe.git'
```

And then execute:

    $ bundle

## Usage

It's really simple just call `:maybe` on objects and pass a block you want to execute.
There is also and `:else` method for handling `nil`.

Examples:
```ruby
require 'maybe'

class Thing 
  def message
    "I worked"
  end
end

Thing.new.maybe { |t| puts t.message }.else { puts "I don't" }

# outputs "I worked"
  
nil.maybe { puts "I worked" }.else { puts "I don't" }
# outputs "I don't"
```

## Feedback

If you have any problems, please don't hesitate to open an issue. Feedback is welcome.
 
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/steven-solomon/maybe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Maybe project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/maybe/blob/master/CODE_OF_CONDUCT.md).
