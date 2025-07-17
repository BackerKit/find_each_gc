# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'find_each_gc'
  spec.version       = '0.1.0'
  spec.authors       = ['Your Name']
  spec.email         = ['your.email@example.com']

  spec.summary       = 'ActiveRecord opt-in GC.start for find_each batches'
  spec.description   = "Monkey patch ActiveRecord's find_each/find_in_batches to call GC.start on each batch, opt-in via module."
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord'
end
