class FakeArray
  # include Enumerable
  attr_accessor :items

  def initialize(*args)
    @items = args
  end

  def [](index)
    self.items[index]
  end

  def first
    self.items[0]
  end

  def each
    self.items.each do |element|
      yield(element)
    end
  end

  # def method_missing(method_name, *args, &block)
  #   @items.send(method_name, *args, &block)
  # end

end