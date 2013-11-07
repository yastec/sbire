require 'yaml'

class SbireConfig
  def self.config_path
    "#{base_directory}/config.yml"
  end

  def self.base_directory
    "/home/dougui/.sbire"
  end

  def self.lang
    config["lang"] ||= "en-US"
  end

  def self.out_path
    config["out_path"] ||= "#{base_directory}/out/"
  end

  def self.out_file
    config["out_file"] ||= "#{out_path}.audiofile"
  end

  def self.text_file
    config["text_file"] ||= "#{base_directory}/text"
  end

  def self.command_path
    config["command_path"] ||= "#{base_directory}/commands.yml"
  end

  private

  def self.config
    return @config if @config
    @config = YAML.load_file(config_path) || {}
  end
end
