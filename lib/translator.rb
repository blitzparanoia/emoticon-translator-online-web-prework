# require modules here
require "yaml"
#require 'pry'
def load_library(file_path)
  # code goes here
  emoji = {"get_meaning" => {}, "get_emoticon" => {} }
 YAML.load_file(file_path).each do |meaning, array|
  english, japanese = array
  emoji["get_emoticon"][english] = japanese
  emoji["get_meaning"][japanese] = meaning
end
emoji
end


def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoji = load_library(file_path)
  result = emoji["get_emoticon"][emoticon]
  #binding.pry
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoji = load_library(file_path)
  result = emoji["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end