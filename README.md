[![Build Status](https://travis-ci.org/snlamm/alphabet_soup_gem.svg?branch=master)](https://travis-ci.org/snlamm/alphabet_soup_gem) 

# AlphabetSoup

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alphabet_soup'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alphabet_soup

## Usage


Alphabet Soup is a great way to custom alphabetize words according to an order that YOU set.
It can even take non-standard characters, such as esperanto. 

To use it, require the gem and, in your code, create a new Alphabetize object instance. Then, assign a string of letters to its @alphabet instance variable. Each letter in the string will be the order and letter of your alphabet. 
Ex. 
x = Alphabetize.new
x.alphabet = "sabjdexld"

Then, pass the words you want to alphabetize as an array into the alphabetize instance method.

array_of_words = ["words", "sabre", "jaded", "apple"]


x.alphabetize(array_of_words)

 => ["sabre", "apple", "jaded", "words"]

 Enjoy!!!!!!

-----
Full Example: 
x = Alphabetize.new
x.alphabet = "sabjdexld"
array_of_words = ["words", "sabre", "jaded", "apple"]


x.alphabetize(array_of_words)

 => ["sabre", "apple", "jaded", "words"] 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/alphabet_soup.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

