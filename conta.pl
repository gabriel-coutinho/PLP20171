:- initialization main.

somaLetra(L, [], 0).
somaLetra(L, [L|T], S) :- somaLetra(L, T, G), S is 1 + G.
somaLetra(L, [H|T], S) :- somaLetra(L, T, G), S is G.

main:-
  read_line_to_codes(user_input, Letra1),
  string_to_atom(Letra1,Letra),
  
  read_line_to_codes(user_input, Frase1),
  string_to_atom(Frase1,Frase),
  string_chars(Frase, ListFrase),
  
  somaLetra(Letra, ListFrase, SomaLetra),
  write(SomaLetra),nl.
