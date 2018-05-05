% --------------------------------------------------------------------------------
% ==== Perfect Aspect Forms ====
% The perfect aspect denotes the contemporary relevance of a past action.
% It can be of three types; simple perfect, contemporaneous perfect and remote perfect.
% Ref: A Grammar of Malayalam - Ravisankar S Nair
% --------------------------------------------------------------------------------

#include "../../symbols.fst"

ALPHABET = [#AAsym#]

$past-tense$ = "<../past.a>"
#perfect-aspects# = <simple-perfect-aspect><cont-perfect-aspect><remote-perfect-aspect>
% We need to wrap the verb into past form first. For that, fake a past tag and pass
% it through the past.a. Only when the input has #perfect-aspects# at end.
$fake-past$ = {<RB>}:{<past>} ^-> ([<v>] __ [#perfect-aspects#])

% --------------------------------------------------------------------------------
% == Simple perfect ==
% By adding –irunnu to the past stem of the verb, simple perfect forms are derived. They
% indicate a state that is different from the one denoted by the past.

$simple-perfect-aspect$ = {<simple-perfect-aspect>}:{ഇരുന്നു<infl_marker>} ^-> ([<past>] __ )

% --------------------------------------------------------------------------------
% == Contemporaneous perfect ==

% Contemporaneous form is derived by adding –irikkunnu to the past stem. It is used to
% denote a state of affairs when the effect of the past action is still experienced or
% when the result of the past action is being expected.

$cont-perfect-aspect$ = {<cont-perfect-aspect>}:{ഇരിക്കുന്നു<infl_marker>} ^-> ([<past>] __ )

% --------------------------------------------------------------------------------
% == Remote perfect ==

% Remote perfect forms are derived by adding –ittu to the past stem. They denote an
% action which occurred only once or a few times (that is, not regular or habitual) or du`ring
% an unspecified time in the past, far removed from the present.

$remote-perfect-aspect$ = {<remote-perfect-aspect>}:{ഇട്ട്<infl_marker>} ^-> ([<past>] __ )

% ----------

$aspects$ = $fake-past$ || $past-tense$ || ( \
    $simple-perfect-aspect$ | $cont-perfect-aspect$ | $remote-perfect-aspect$ \
)

$tests$ = അറിയിക്കുക<v><RB> <simple-perfect-aspect> | അറിയിക്കുക<v><RB> <remote-perfect-aspect>
$tests$ || $aspects$ >> "aspects.test.a"

$aspects$

