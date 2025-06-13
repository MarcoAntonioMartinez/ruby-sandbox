class LogLineParser
  def initialize(line)
    @line = line
  end

  #could probably make a regexp for line instead of using strip
  def message
    line = @line.split(":")
    log = line[1].strip
  end

  def log_level
    line = @line.split(":")
    log = line[0].strip.gsub(/[\[\]]/, "").downcase
  end

  def reformat
    @line = "#{message} (#{log_level})"
  end
end

line = LogLineParser.new('[ERROR]: Invalid operation')

line.log_level

 
