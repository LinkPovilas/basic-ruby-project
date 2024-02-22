# frozen_string_literal: true

# Returns true if the string contains only alphabetic characters, false otherwise.
def alphabetic?(string)
  !!string.match?(/[[:alpha:]]/)
end

# Returns true if the string contains at least one uppercase letter, false otherwise.
def upcase?(string)
  !!string.match(/[[:upper:]]/)
end
