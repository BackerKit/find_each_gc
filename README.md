# find_each_gc

A minimal Ruby gem to allow ActiveRecord models to opt into running `GC.start`
on each batch iteration of `find_each`/`find_in_batches`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'find_each_gc', path: 'PATH_TO_THIS_GEM'
```

## Usage

Opt-in for a model by calling:

```ruby
FindEachGC.enable_for(MyModel)
```

Now, when you use `find_each` or `find_in_batches` on this model, `GC.start`
will be called at the start of each batch.

## Development

Standard Ruby gem structure. No external dependencies except ActiveRecord.
