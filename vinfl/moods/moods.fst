#include "../../symbols.fst"

ALPHABET = [#Letters##POS##BM##TMP##infl#]

$remove-vinfl$ = {[#vinfl#]}:{} ^-> (<infl_marker> [#POS##BM##TMP#]+ __)

$imperative-mood$ = "<imperative.a>"
$compulsive-mood$ = "<compulsive.a>"
$promissive-mood$ = "<promissive.a>"
$optative-mood$ = "<optative.a>"
$abilitative-mood$ = "<abilitative.a>"
$purposive-mood$ = "<purposive.a>"
$permissive-mood$ = "<permissive.a>"
$precative-mood$ = "<precative.a>"
$irrealis-mood$ = "<irrealis.a>"

$moods$ = $imperative-mood$ || $compulsive-mood$ || $promissive-mood$ || \
	$optative-mood$ || $abilitative-mood$ || $purposive-mood$ || \
	$permissive-mood$ || $precative-mood$ || $irrealis-mood$ || \
	$remove-vinfl$

$tests$ = അറിയിക്കുക<v><RB> <imperative-mood> | അറിയിക്കുക<v><RB> <compulsive-mood> | അറിയിക്കുക<v><RB> <compulsive-mood-neg> | പതറുക<v><RB><compulsive-mood>
$tests$ || $moods$ >> "moods.test.a"

$moods$