-# [Livery](https://en.wikipedia.org/wiki/Aircraft_livery)

Highwing's shared style and linting configurations for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'livery'
end
```

Or, for a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'percy-style'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  livery:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include Rubocop directly in your application's dependencies - Livery will include the proper versions shared across all projects.

# ## Credits
Idea and configuration based on https://github.com/percy/percy-style
