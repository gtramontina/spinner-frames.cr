<h1 align="center">
  <p>spinner-frames.cr</p>
  <sub><sup>A collection of spinner frames</sup></sub>
</h1>

![spinner-frames](https://user-images.githubusercontent.com/374635/45750513-a9fbed00-bc52-11e8-9509-eade5a9d0d4b.gif)

---

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  spinner-frames:
    github: gtramontina/spinner-frames.cr
    version: <version>
```

## Usage

First require it…
```crystal
require "spinner-frames"
```

Then you can use the default charset (`:line`)…
```crystal
s = SpinnerFrames.new
5.times { print s.next } # -\|/-
```

… any of the built-in charsets…
```crystal
s = SpinnerFrames.new(SpinnerFrames::Charset[:arc])
5.times { print s.next } # ◜◠◝◞◡
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

1. Fork it ( https://github.com/gtramontina/spinner-frames.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Related

* https://github.com/gtramontina/ansi-escapes.cr

---

[![travis build](https://img.shields.io/travis/gtramontina/spinner-frames.cr.svg?style=flat-square)](https://travis-ci.org/gtramontina/spinner-frames.cr)
