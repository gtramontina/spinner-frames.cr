require "yaml"

class SpinnerFrames
  VERSION = (YAML.parse(File.read("./shard.yml")))["version"]
end
