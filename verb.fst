#include "symbols.fst"

% Verbs
$ADVERB$ = "<lexicon/adverbs.a>"
$VSTEM$ = "<lexicon/verbs.a>"
$TENSES$ = "<vinfl/tense.a>"
$MOODS$ = "<vinfl/moods/moods.a>"
$ASPECTS$ = "<vinfl/aspects/aspects.a>"
$CONJUNCTION$ = "<lexicon/conjunctions.a>"
$POLARITY$ = "<lexicon/polarity.a>"
$PASSIVEVOICE$ = "<vinfl/voices/passive.a>"

$VSTEM-PASSIVE$ = $VSTEM$ <passive-voice> || $PASSIVEVOICE$
$VERB-PREFIX$ = $ADVERB$? ( $VSTEM$ | $VSTEM-PASSIVE$ ) $CONJUNCTION$? [#vinfl#]? $POLARITY$?
$VERB-TENSES$ = $VERB-PREFIX$ || $TENSES$
$VERB-MOODS$ = $VERB-PREFIX$ || $MOODS$
$VERB-ASPECTS$ = $VERB-PREFIX$ || $ASPECTS$

$VERB$ = $VERB-TENSES$ | $VERB-MOODS$ | $VERB-ASPECTS$

% Tests
% $tests$ = (ചിരിക്കുക<v><RB><passive-voice> | സ്വീകരിക്കപ്പെടുക<v><RB><passive-voice>) [#vinfl#]
% $tests$ || ( $TENSES$ |  $MOODS$ | $ASPECTS$ )  >> "verb.test.a"
% $VSTEM-PASSIVE$ >>  "vstem-passive.test.a"

$VERB$
