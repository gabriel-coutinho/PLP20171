insere(X, L, [X|L]).

insereFim(T, [H], L):-insere(H, [T], L).
insereFim(N, [H|T], L):-insereFim(N, T, X), insere(H, X, L).

getElement(Ind, [H|T], C) :- Ind== 0 -> C = H; Z is Ind-1, getElement(Z, T, C).

:- initialization main.

main:-
  read_line_to_codes(user_input, NumA2),
  string_to_atom(NumA2,NumA1),
  atom_number(NumA1,NumA),
  
  read_line_to_codes(user_input, NumB2),
  string_to_atom(NumB2,NumB1),
  atom_number(NumB1,NumB),
  
  read_line_to_codes(user_input, NumC2),
  string_to_atom(NumC2,NumC1),
  atom_number(NumC1,NumC),
  
  read_line_to_codes(user_input, NumD2),
  string_to_atom(NumD2,NumD1),
  atom_number(NumD1,NumD),
  
  read_line_to_codes(user_input, A1),
  string_to_atom(A1,A),
  string_chars(A, ListA),
  
  read_line_to_codes(user_input, B1),
  string_to_atom(B1,B),
  string_chars(B, ListB),
  
  read_line_to_codes(user_input, C1),
  string_to_atom(C1,C),
  string_chars(C, ListC),
  
  read_line_to_codes(user_input, D1),
  string_to_atom(D1,D),
  string_chars(D, ListD),
  
  getElement(NumA, ListA, RetornoA),
  write(RetornoA),
  getElement(NumB, ListB, RetornoB),
  write(RetornoB),
  getElement(NumC, ListC, RetornoC),
  write(RetornoC),
  getElement(NumD, ListD, RetornoD),
  write(RetornoD).
