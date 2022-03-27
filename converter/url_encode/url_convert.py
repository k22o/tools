from urllib.parse import quote, unquote


print(quote('あ'))     # '%E3%81%82'
print(quote('A/B/C'))  #=> 'A/B/C'
print(quote('A/B/C', safe=""))   #=> 'A%2FB%2FC'

print(unquote('%E3%81%82'))  #=> 'あ'
print(unquote('A%2FB%2FC'))  #=> 'A/B/C'