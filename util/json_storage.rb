require 'json'

class JSONStorage
  def self.save_data(class_name, object)
    File.write("./data/#{class_name}.json", JSON.dump(object))
  end

  def self.load_data(class_name)
    return [] unless File.exist?("./data/#{class_name}.json")

    file_data = File.read("./data/#{class_name}.json")
    JSON.parse(file_data, create_additions: true)
  end
end
