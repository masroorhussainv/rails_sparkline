# RailsSparkline
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails_sparkline', path: '/path/to/gem'
```

And then execute:
```bash
$ bundle
```

To render a Sparkline in a view file:
```erb
<%= RailsSparkline::Renderer.render([1, 2, 5, 2, 3, 4, 5, 10], width: 200, height: 40, fill: "none", stroke: "blue") %>
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
