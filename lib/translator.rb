# require modules here
require 'yaml'
require 'pry'


def load_library(emoji_file)
  new_file = YAML.load_file(emoji_file)

  final_result= new_file.each_with_object ({}) do |(descriptor, emoji), new_hash|
    new_hash[descriptor]= {"english": emoji[0], "japanese": emoji[1]}
  end
  # binding.pry
end

# def load_library(path)
#   emoji = YAML.load_file(path)
#
#
#   emoji_hash = {}
#   emoji_hash["get_meaning"] = {}
#   emoji_hash["get_emoticon"] = {}
#
#   emoji.each do |word, emojis|
#     emoji_hash["get_meaning"][emojis[1]] = word
#     emoji_hash["get_emoticon"][emojis[0]] = emojis[1]
#   end
#   emoji_hash
# end



# def get_japanese_emoticon(emoji_file, emoticon)
# emoticons = load_library(emoji_file)
#
#   if emoticons {new_hash[descriptor]}.has_key? (emoticon)
#     emoticons {new_hash[descriptor]}[emoticon]
#   else
#     "Sorry, that emoticon was not found"
#   end
# end
# binding.pry


# end




def get_english_meaning(emoji_file, emoji)
  load_library(emoji_file)
  # code goes here
end
