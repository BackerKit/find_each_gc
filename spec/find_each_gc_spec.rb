# frozen_string_literal: true

require 'active_record'
require 'find_each_gc'

RSpec.describe FindEachGCClassMethods do
  before(:each) do
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: ':memory:'
    )
    ActiveRecord::Schema.define do
      create_table :widgets, force: true do |t|
        t.string :name
      end
    end
  end

  it 'calls GC.start on each batch when FindEachGC is enabled' do
    class Widget < ActiveRecord::Base; end
    10.times { |i| Widget.create!(name: "Widget #{i}") }
    expect(GC).to receive(:start).at_least(:once)
    Widget.find_in_batches(batch_size: 2) { |_batch| }
  end

  it 'calls GC.start on each when FindEachGC is enabled' do
    class Widget < ActiveRecord::Base; end
    10.times { |i| Widget.create!(name: "Widget #{i}") }
    expect(GC).to receive(:start).at_least(:once)
    Widget.find_each(batch_size: 2) { |_batch| }
  end
end
