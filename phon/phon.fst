#include "../symbols.fst"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Delete analysis only symbols from the surface string

ALPHABET = [#Ssym#] [#BM##POS##Numbers##TMP##Lsym##compounds#]:<>
$delete-pos$ = .*

$PHON$ = "<exceptions.a>" \
	|| "<verb-negation.a>" \
	|| "<chillu-normalization.a>" \
	|| "<vowelsign-consonant.a>" \
	|| "<consonant-consonant.a>" \
	|| "<chillu-consonant.a>" \
	|| "<consonant-vowel.a>" \
	|| "<vowelsign-vowel.a>" \
	|| "<virama-vowel.a>" \
	|| "<virama-consonant.a>" \
	% Replace all vowels with its signs appearing anywhere in string except at beginning
	|| "<vowel-to-vowelsign.a>" \
	% Delete all analysis strings
	|| $delete-pos$

$test$ = <>:<BoW>മാല<n><RB><accusative>:യ<>:എ<del><LB>ഒ<indeclinable><RB><>:<EoW> |\
	<>:<BoW>മോർ<n><RB><locative>:ഇ<>:ൽ<del><LB>എ<indeclinable><RB><>:<EoW> |\
	<>:<BoW>മോർ<n><RB><locative>:ഇ<>:ൽ<del><LB>കൂടി<cnj><RB><>:<EoW> | \
	<>:<BoW>ആതി<n><RB><LB>ഇരിക്കുക<v><RB><>:<EoW> | \
	<>:<BoW>ആതി<n><n-v-compound><RB><LB>ഇരിക്കുക<v><RB><>:<EoW>

$test$ || $PHON$ >> "phon.test.a"

$PHON$
