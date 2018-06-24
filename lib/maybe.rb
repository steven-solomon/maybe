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

class Object
  def maybe
    Else.new(yield self)
  end
end
