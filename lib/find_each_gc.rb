# frozen_string_literal: true

module FindEachGCClassMethods
  def in_batches(*args, **kwargs, &block)
    return super(*args, **kwargs) unless block_given?

    super(*args, **kwargs) do |batch|
      GC.start
      block.call(batch)
    end
  end
end

ActiveRecord::Relation.prepend FindEachGCClassMethods
