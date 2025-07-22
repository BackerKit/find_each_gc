# find_each_gc

A minimal Ruby gem that automatically runs `GC.start` on each batch iteration 
of `find_each`/`find_in_batches` for all ActiveRecord models.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'find_each_gc'
```

## Usage

Once the gem is installed and required, `GC.start` will automatically be called 
at the start of each batch when using `find_each` or `find_in_batches` on any 
ActiveRecord model. No additional configuration is required.

```ruby
# GC.start will be called automatically on each batch
User.find_each(batch_size: 1000) do |user|
  # process user
end

# GC.start will be called automatically on each batch  
User.find_in_batches(batch_size: 1000) do |batch|
  # process batch
end
```

## Development

Standard Ruby gem structure. No external dependencies except ActiveRecord.
