class Script < Hash
  attr_accessor :script

  def initialize(path)
    YAML::load_file(path).each do |label, lines|
      self[label] = lines
    end
  end
end
