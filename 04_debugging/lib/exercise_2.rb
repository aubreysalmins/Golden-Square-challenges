def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    p char
    p char.ord
    out_char = cipher[65 - char.ord]
    p "Should be t"
    p "Actually is #{out_char}"
    exit
  end
  return plaintext_chars.join
end

# encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p "theswiftfoxjumpedoverthelazydog"

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"