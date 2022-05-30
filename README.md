# Ilias

Ruby uses English words for language contructs, keywords, class names etc. It reads well already the way it is. Let's imagine we're building an authorization gem, we could start with something like:

```ruby
class Role
  attr_reader :permissions
  def initialize(permissions)
    @permissions = permissions
  end

  def can?(permission)
    permissions.include?(permission)
  end
end
```

`permissions.include?(permission)` feels natural. Things get a *bit* solecistic when we call methods on single objects. Take this for example:

```ruby
array = [2, 4, 8, 10]
array.include?(4)
```
I feel it'd be nice if we could alias it to agree with the third-person singular verb endings in English. You could argue that `include?` is not a verb and Ruby is not English, fair... but we use English diction in Ruby. Crystal [acknowledges](https://crystal-lang.org/api/1.4.1/Enumerable.html#includes%3F%28obj%29%3ABool-instance-method) 3rd person singular verb endings for method names.

Here's a list of aliased methods:

```ruby
module Enumerable
  # Some Ruby classes that include Enumerable
  # Array
  # Dir
  # Hash
  # IO
  # Range
  # Set
  # Struct
  alias includes? include?
end

class String
  alias ends_with? end_with?
  alias starts_with? start_with?
  alias includes? include?
  alias contains? includes?
end

class Object
  alias is_an? is_a?
  alias responds_to? respond_to?
  alias responds_to_missing? respond_to_missing?
end

class BasicObject
  alias equals? equal?
end

class Dir
  alias exists? exist
end

```
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ilias'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ilias

## Usage

Include this project and use the aliases where you see fit in place of the core Ruby methods.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/siaw23/ilias). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/ilias/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ilias project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ilias/blob/master/CODE_OF_CONDUCT.md).
