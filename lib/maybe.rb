require "maybe/version"

class NilClass
  def maybe

  end

  def else
    yield
  end
end

class Else
  def initialize(value)
    @value = value
  end

  def else
    @value
  end
end

def Maybe(value)
  Else.new(value)
end

class Object
  def maybe
    Maybe(yield self)
  end
end
