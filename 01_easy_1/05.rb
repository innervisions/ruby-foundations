# 05 - Encrypted Pioneers
ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  "Gvz Orearef-Yrr",
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def rot13(str)
  str.chars.each_with_object('') do |char, rotated|
    rotated << case char
               when 'a'..'z'
                 (((char.ord + 13 - 97) % 26) + 97).chr
               when 'A'..'Z'
                 (((char.ord + 13 - 65) % 26) + 65).chr
               else
                 char
               end
  end
end

ENCRYPTED_PIONEERS.each { |name| puts rot13(name) }
