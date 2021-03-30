require "../src/spinner-frames"
require "ansi-escapes"
require "colorize"

include AnsiEscapes
COLUMN_WIDTH   = 50
MAX_PER_COLUMN = 25
NAME_PADDING   = 30

print Erase::SCREEN + Cursor::HIDE

SpinnerFrames::Charset.to_h.each_with_index do |tuple, index|
  name, frames = tuple
  spinner = SpinnerFrames.new(frames)
  x = (index // MAX_PER_COLUMN) * COLUMN_WIDTH
  y = (index % MAX_PER_COLUMN)
  print Cursor.to(x, y) + name.colorize.dim.to_s
  spawn do
    while true
      print Cursor.to(x + NAME_PADDING, y) + spinner.next
      sleep 0.1
    end
  end
end

at_exit { print Erase::SCREEN + Cursor.to(0, 0) + Cursor::SHOW }
Signal::INT.trap { exit }
gets
