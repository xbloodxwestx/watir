require 'yaml'

class ReadConfig
  def readconfigdata(key)
    config=YAML.load_file("../Config/Config.yml")
    return config[key]
  end
end
