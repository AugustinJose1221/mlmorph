#include "../symbols.fst"

% Note: If we can introduce an imaginary symbol for implicit 'a' in consonants
% this can be merged with vowelsign-vowel.fst
ALPHABET = [#AAsym#]

#=C# = #Consonants#
$C$ = {[#=C#]}:{[#=C#][യ]}
$insert-ya$ =  $C$ ^-> (__ [#POS##BM##Numbers##infl#]+ [#Vowels#] )

$cons-vowel$ = $insert-ya$

$tests$ = തറ <hundreds> അടി <Noun>
% Uncomment below line for testing
% $tests$ ||\
$cons-vowel$ || .*
