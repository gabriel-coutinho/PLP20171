:- initialization main.

somaLetra(L, [], 0).
somaLetra(L, [L|T], S) :- somaLetra(L, T, G), S is 1 + G.
somaLetra(L, [H|T], S) :- somaLetra(L, T, G), S is G.

main:-
  read_line_to_codes(user_input, NumA2),
  string_to_atom(NumA2,NumA1),
  atom_number(NumA1,NumA),
 
  somaLetra(Letra, ListFrase, SomaLetra),
  write(SomaLetra),nl.
