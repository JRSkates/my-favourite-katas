#My friend wants a new band name for her band. 
#She like bands that use the formula: "The" + a noun with the first letter capitalized

#"dolphin" -> "The Dolphin"

#However, when a noun STARTS and ENDS with the same letter, she likes to repeat the noun twice 
#and connect them together with the first and last letter, combined into one word (WITHOUT "The" in front), like this:

#"alaska" -> "Alaskalaska"

#Complete the function that takes a noun as a string, and returns her preferred band name written as a string.

def band_name_generator(name)
  name.chars.first == name.chars.last ? "#{name.capitalize}#{name[1..-1]}" : "The #{name.capitalize}"
end