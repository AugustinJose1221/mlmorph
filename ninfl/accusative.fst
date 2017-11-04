%
% FSTs for nominal Accusative/പ്രതിഗ്രാഹിക inflections
%

#include "../symbols.fst"

%%%%%%%%%%%% Noun Inflections %%%%%%%%%%%%%%

ALPHABET = [#AAsym#]
% Accusative inflection rules കടലിനെ, ആനയെ, പൂച്ചയെ, ആടിനെ, മരത്തെ, മരത്തിനെ
$accusative-special-cases$ = {ഞാൻ}:{എന്നെ} | {താൻ}:{തന്നെ} | {നാം}:{നമ്മെ} | \
	{അവർ}:{അവരെ} | {ഇവൻ}: {ഇവനെ}

$accusative-exceptions-step1$ = $accusative-special-cases$ ^-> (__ [#POS##BM##Numbers##TMP#]+ <accusative> )
$remove-accusative-ninfl$ = {<accusative>}:{} ^-> ([#POS##BM##Numbers##TMP#]+ __)
$accusative-exceptions$ = $accusative-exceptions-step1$ || $remove-accusative-ninfl$

$accusative-cons-vowels$ = {<accusative>}:{എ} ^-> ([#Consonants##VowelSigns#] [#POS##BM##Numbers##TMP#]+ __)
$accusative-chillus$ = {<accusative>}:{ഇനെ} ^-> ([#Chillus##Virama#] [#POS##BM##Numbers##TMP#]+ __)

$accusative-anuswara-forms$ = {<accusative>}:{<del>ത്തെ} | {<accusative>}:{<del>ത്തിനെ}
$accusative-anuswara-step1$ = $accusative-anuswara-forms$ ^-> ([#Anuswara#] [#POS##BM##Numbers##TMP#]+ __)
$accusative-anuswara-step2$ = {[#Anuswara#]}:{} ^-> (__ [#POS##BM##Numbers##TMP#]+ <del> )
$accusative-anuswara$=  $accusative-anuswara-step1$ || $accusative-anuswara-step2$

$accusative-cases$ = $accusative-cons-vowels$ | $accusative-chillus$ | $accusative-anuswara$

$accusative$ =  $accusative-exceptions$ | $accusative-cases$
$accusative$
