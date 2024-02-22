# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

# https://www.theodinproject.com/lessons/ruby-caesar-cipher
RSpec.describe CaesarCipher do
  let(:cipher) { CaesarCipher.new }
  let(:decrypted_message) { 'What a string!' }
  let(:encrypted_message) { 'Bmfy f xywnsl!' }
  let(:shift_factor) { 5 }

  context 'encryption' do
    it 'encrypts a string' do
      expect(cipher.encrypt(decrypted_message, shift_factor)).to eq(encrypted_message)
    end
  end

  context 'decryption' do
    it 'decrypts a string' do
      expect(cipher.decrypt(encrypted_message, shift_factor)).to eq(decrypted_message)
    end
  end
end
