require "./spinner-frames/*"

class SpinnerFrames
  def initialize
    initialize(Charset[:pipe])
  end

  def initialize(frames : String)
    initialize(frames.split(""))
  end

  def initialize(frames : Array(String))
    @frames = frames
    @current = @frames.size - 1
  end

  def next
    @current += 1
    @current = @current % @frames.size
    @frames[@current]
  end
end
