require "maybe/version"

class NilClass
  def maybe

  end

  def else
    yield
  end
end

class Object
  def maybe
    yield self

    self
  end

  def else
    self
  end
end
