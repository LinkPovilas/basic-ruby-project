# frozen_string_literal: true

require_relative 'utils/string_utilities'

# CaesarCipher class implements the Caesar cipher encryption and decryption algorithm.
class CaesarCipher
  # Encrypts the given text using the Caesar cipher algorithm.
  def encrypt(text, shift_factor)
    apply_shift(text, shift_factor)
  end

  # Decrypts the given text using the Caesar cipher algorithm.
  def decrypt(text, shift_factor)
    apply_shift(text, -shift_factor)
  end

  private

  # Applies the shift factor to the given text and returns a string.
  def apply_shift(text, shift_factor)
    text.chars.map { |char| shift_character(char, shift_factor) }.join
  end

  # Shifts the given character according to the shift factor.
  def shift_character(char, shift_factor)
    # Shifts only alphabetic characters
    if alphabetic?(char)
      # Shifts alphabetic characters based on the character case
      return shift_uppercase(char, shift_factor) if upcase?(char)

      shift_lowercase(char, shift_factor)
    else
      char
    end
  end

  # Shifts the given uppercase character according to the shift factor.
  # Uppercase letters are represented by consecutive ASCII values starting from 65 for 'A' and ending at 90 for 'Z'.
  def shift_uppercase(char, shift_factor)
    # Takes the result modulo 26 to ensure that the new value wraps around if it exceeds the range
    (((char.ord - 65 + shift_factor) % 26) + 65).chr
  end

  # Shifts the given lowercase character according to the shift factor.
  # Lowercase letters are represented by consecutive ASCII values starting from 97 for 'a' and ending at 122 for 'z'.
  def shift_lowercase(char, shift_factor)
    # Takes the result modulo 26 to ensure that the new value wraps around if it exceeds the range
    (((char.ord - 97 + shift_factor) % 26) + 97).chr
  end
end
