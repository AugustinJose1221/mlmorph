%
% FSTs for nominal Sociative inflections
%

#include "../symbols.fst"

%%%%%%%%%%%% Noun Inflections %%%%%%%%%%%%%%

ALPHABET = [#Letters##POS##BM##TMP##Numbers#] <sociative> <del> <pl> <infl_marker>
% Sociative inflection rules
$sociative_form_1$ = {<sociative>}:{ഓട്<infl_marker>} ^-> ([#Consonants##Chillus##VowelSigns##Virama#] [#POS##BM##TMP##Numbers#]+ __)
$sociative_form_2$ = {<sociative>}:{ഓടു്} ^-> ([#Consonants##Chillus##VowelSigns##Virama#] [#POS##BM##TMP##Numbers#]+ __)
$sociative_form_3$ = {<sociative>}:{ഇനോട്<infl_marker>} ^-> ([#Virama#] [#POS##BM##TMP##Numbers#]+ __)
$sociative_form_4$ = {<sociative>}:{ഇനോടു്} ^-> ([#Virama#] [#POS##BM##TMP##Numbers#]+ __)
$sociative$ = $sociative_form_1$ | $sociative_form_2$ | $sociative_form_3$ | $sociative_form_4$
$sociative$
