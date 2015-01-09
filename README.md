# Heroku Config Manager

[![Gem Version](https://badge.fury.io/rb/heroku_config_manager.svg)](http://badge.fury.io/rb/heroku_config_manager)
[![Build Status](https://travis-ci.org/G5/heroku_config_manager.svg?branch=formatting-logic)](https://travis-ci.org/G5/heroku_config_manager)

A simple Ruby gem that allows you to set and remove multiple config vars
for multiple apps at once.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heroku_config_manager'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heroku_config_manager

## Usage

You can pass in multiple apps and multiple config vars to set...

```ruby
api_key = "my-api-key"
apps    = ["my-heroku-app-name", "another-heroku-app-name"]
params  = { "CONFIG_ONE" => "value", "CONFIG_TWO" => "value" }

HerokuConfigManager.set(api_key, apps, params)
```

In order to remove a config var, simply set it's value to nil in the passed in
params...

```ruby
params  = { "MY_CONFIG_VAR" => nil }

HerokuConfigManager.set(api_key, apps, params)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/heroku_config_manager/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Authors

  * Brian Bauer / [@bbauer](https://github.com/bbauer)

## Specs

Run once.

```bash
$ rspec
```

## License

Copyright (c) 2015 G5

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
