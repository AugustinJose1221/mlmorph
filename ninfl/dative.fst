%
% FSTs for nominal dative(ഉദ്ദേശിക) inflections
%

#include "../symbols.fst"

%%%%%%%%%%%% Noun Inflections - Dative  %%%%%%%%%%%%%%

ALPHABET = [#Letters##POS##BM##TMP##Lsym##Numbers#] <dative> <del> <pl> <infl_marker>

#inflboundary# = #POS##BM##TMP##Lsym##Numbers#

$dative-del$ = {[#Anuswara#ൻർ]}:{} ^-> (__ [#inflboundary# ]+ <del> )

% Dative inflection rules മഴയ്ക്ക്, ഇലയ്ക്ക്, കാടിന്, വീടിന്
$dative-cons-form-1a$ = {<dative>}:{യ്ക്ക്<infl_marker>} ^-> ([#Consonants#] [#inflboundary# ]+ __)
$dative-cons-form-1b$ = {<dative>}:{യ്ക്കു്} ^-> ([#Consonants#] [#inflboundary# ]+ __)
$dative-cons-form$ = $dative-cons-form-1a$ | $dative-cons-form-1b$

$dative-cons-vowel-form-1a$ = {<dative>}:{ക്<infl_marker>} ^-> ([#Consonants##VowelSigns#ൾർ] [#inflboundary# ]+ __)
$dative-cons-vowel-form-1b$ = {<dative>}:{കു്} ^-> ([#Consonants##VowelSigns#ൾർ] [#inflboundary# ]+ __)
$dative-cons-vowel-form$ = $dative-cons-vowel-form-1a$ | $dative-cons-vowel-form-1b$

$dative-virama-form-1a$ = {<dative>}: {ഇന്<infl_marker>} ^-> ([#Virama#ൽൺ] [#inflboundary# ]+ __)
$dative-virama-form-1b$ = {<dative>}: {ഇനു്} ^-> ([#Virama#ൽൺ] [#inflboundary# ]+ __)
$dative-virama-form$ = $dative-virama-form-1a$ | $dative-virama-form-1b$

$dative-chillu-form-1a$ = {<dative>}: {<del>ന്<infl_marker>} ^-> ([ൻ] [#inflboundary# ]+ __)
$dative-chillu-form-1b$ = {<dative>}: {<del>നു്} ^-> ([ൻ] [#inflboundary# ]+ __)
$dative-chillu-form-1c$ = {<dative>}: {<del>[രറ]ിന്<infl_marker>} ^-> ([ർ] [#inflboundary# ]+ __)
$dative-chillu-form-1d$ = {<dative>}: {<del>[രറ]ിനു്} ^-> ([ർ] [#inflboundary# ]+ __)
$dative-chillu-form$ = $dative-chillu-form-1a$ | $dative-chillu-form-1b$ | $dative-chillu-form-1c$ | $dative-chillu-form-1d$
$dative-chillu-form$ = $dative-chillu-form$ || $dative-del$


$dative-anuswara-form-1$ = {<dative>}: {<del>ത്തിന്<infl_marker>} ^-> ([#Anuswara#] [#inflboundary# ]+ __)
$dative-anuswara-form-2$ = {<dative>}: {<del>ത്തിനു്} ^-> ([#Anuswara#] [#inflboundary# ]+ __)
$dative-anuswara$ = $dative-anuswara-form-1$ | $dative-anuswara-form-2$
$dative-anuswara$ = $dative-anuswara$ || $dative-del$

$dative$ = $dative-cons-form$ | $dative-cons-vowel-form$ | $dative-virama-form$ | $dative-chillu-form$ | $dative-anuswara$

$dative$
