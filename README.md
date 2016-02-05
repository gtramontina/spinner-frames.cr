# spinner-frames.cr [![travis build](https://img.shields.io/travis/gtramontina/spinner-frames.cr.svg?style=flat-square)](https://travis-ci.org/gtramontina/spinner-frames.cr)

A collection of spinner frames

## Built-in frames:

You can find them in `SpinnerFrames::Charset[]`.

* `:pipe`: `-\\|/`
* `:snake`: `⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏`
* `:snake2`: `⣾⣽⣻⢿⡿⣟⣯⣷`
* `:snake3`: `⠁⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈⠈`
* `:snake4`: `⠈⠉⠋⠓⠒⠐⠐⠒⠖⠦⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈`
* `:snake5`: `⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠴⠲⠒⠂⠂⠒⠚⠙⠉⠁`
* `:snake6`: `⠋⠙⠚⠒⠂⠂⠒⠲⠴⠦⠖⠒⠐⠐⠒⠓⠋`
* `:drop`: `⠁⠂⠄⡀ `
* `:drop_back`: `⠁⠂⠄⡀⢀⠠⠐⠈`
* `:compass`: `←↖↑↗→↘↓↙`
* `:d_pad`: `←↑→↓`
* `:d_pad_fat`: `⇐⇑⇒⇓`
* `:compass_fat`: `⇐⇖⇑⇗⇒⇘⇓⇙`
* `:bars`: `▁▃▄▅▆▇█▇▆▅▄▃▁`
* `:bars1`: `▉▊▋▌▍▎▏▎▍▌▋▊▉`
* `:bars2`: `▁▂▃▄▅▆▇█▉▊▋▌▍▎▏▏▎▍▌▋▊▉█▇▆▅▄▃▂▁`
* `:checkers`: `▖▘▝▗`
* `:fan`: `┤┘┴└├┌┬┐`
* `:fan2`: `╫╪`
* `:fan3`: `+x`
* `:fan4`: `v<^>`
* `:fan5`: `◐◓◑◒`
* `:triangle`: `◢◣◤◥`
* `:clock_square`: `◰◳◲◱`
* `:clock_circle`: `◴◷◶◵`
* `:indeterminate`: `"█▒▒▒▒", "▒█▒▒▒", "▒▒█▒▒", "▒▒▒█▒", "▒▒▒▒█", "▒▒▒█▒", "▒▒█▒▒", "▒█▒▒▒"`

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  spinner-frames:
    github: gtramontina/spinner-frames.cr
```

## Usage

First require it…
```crystal
require "spinner-frames"
```

Then you can use the default charset (`:pipe`)…
```crystal
s = SpinnerFrames.new
5.times { print s.next } # -\|/-
```

… any of the built-in charsets…
```crystal
s = SpinnerFrames.new(SpinnerFrames::Charset[:snake])
5.times { print s.next } # ⠋⠙⠹⠸⠼
```

… provide a new charset as `String`…
```crystal
s = SpinnerFrames.new("01234")
5.times { print s.next } # 01234
```

… or as `Array(String)`
```crystal
s = SpinnerFrames.new(["[   ]", "[-  ]", "[ - ]", "[  -]", "[   ]"])
5.times { print s.next } # [   ][-  ][ - ][  -][   ]
```

## Contributing

1. Fork it ( https://github.com/gtramontina/spinner/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
