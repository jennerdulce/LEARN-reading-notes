# Ruby Rspec
# Rspec is a ruby Gem; Similar to a package in yarn
# Why TDD?

# Requirements: Rspec file and Ruby file within a directory

# Rspec Walkthrough
# Similar to yarn install jest, you have to install the gym
# The terminal command is: gem install rspec
# After you run the terminal command, import `require rspec` near the top of your codebase
# Also toward the top of you code base, Import the file you want to use with the keyword `require_relative 'filename'`
# Test is very similar to Jest: describe, it, expect

require 'rspec'
require_relative 'ruby-example.rb'

# Describe: Describe the test suite
describe 'Book Method' do
    # it: Describe the test you will run
    it 'has to be real' do
        # expect: Run some code that retreives output and compare the output
        # use a matcher for your desired test
        # .not_to is an `equality`
        # raise_error is more specific to what you expect to happen
        my_book = Book.new
        # Curly braces signifies that you are testing for an action
        expect { Book.new }.not_to raise_error
        expect(my_book).to be_a Book
    end

    # Data Test
    it 'has a title' do
        my_book = Book.new
        my_book.title = "50 Shades of Grey"
        # Parentheses means that you are testing for data
        expect(my_book.title).to be_a String
        expect(my_book.title).to eq "50 Shades of Grey"
    end

    # Data Test
    it 'has an author' do
        # Test for default value
        my_book = Book.new
        expect(my_book.author).to be_a String
        expect(my_book.author).to eq 'anonymous'

        # Test for instantiation with an argument
        fifty_shades = Book.new("Jessica Alba")
        expect(fifty_shades.author).to be_a String
        expect(fifty_shades.author).to eq "Jessica Alba"
    end

    # Data Test
    it 'can report the current page' do
        my_book = Book.new
        expect(my_book.page).to be_a Integer
        expect(my_book.page).to eq 1
    end

    # Action Test: Using a method
    it 'can turn a page' do
        my_book = Book.new
        expect{ my_book.turn_page(10).to change  { my_book.page }.from(0).to(10)}
    end

    it 'test' do
        num = addSum(1, 2)
        expect(num).to eq 3
    end
end

# Run the test with this terminal command `rspec filename.rb -f d`