$imperative-mood$ = "<imperative.a>"
$compulsive-mood$ = "<compulsive.a>"
$promissive-mood$ = "<promissive.a>"

$moods$ = $imperative-mood$ || $compulsive-mood$ || $promissive-mood$

$tests$ = അറിയിക്കുക<v><RB> <imperative-mood> | അറിയിക്കുക<v><RB> <compulsive-mood> | അറിയിക്കുക<v><RB> <compulsive-mood-neg> | പതറുക<v><RB><compulsive-mood>
$tests$ || $moods$ >> "moods.test.a"

$moods$