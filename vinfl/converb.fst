#include "../symbols.fst"

ALPHABET = [#AAsym#]
%%%% Converbs %%%%%%%%%%
% വിനയെച്ചം - Adverbial participle
% മുൻവിനയെച്ചം
% പൂർണ്ണക്രിയക്ക് മുമ്പ് നടക്കുന്ന അപൂർണ്ണക്രിയയാണ് മുൻവിനയെച്ചം. ഇതിന് പ്രത്യയമൊന്നും ചേർക്കേണ്ടതില്ല.ഓടിക്കയറി, % ചാടിപ്പോയി എന്നിവ ഉദാഹരണം.
% കുളിക്കുക-> കുളിച്ച് , വരുക-വന്ന് , തരുക-തന്ന്, തളരുക-തർന്ന്, കരയുക-കരഞ്ഞ്, പാടുക - പാടി, ഇളകുക->ഇളകി

#include "past-forms.fst"
$past-tense-suffix-map-wrapped$ = $past-tense-suffix-map$ <>:<RB>
$past-to-cvb-past$ = {ു}:{്} ^-> (__ [<RB>])
$cvb-adv-part-past-suffix-forms$ = $past-tense-suffix-map-wrapped$ || $past-to-cvb-past$

$cvb-adv-part-past-suffix$ = $cvb-adv-part-past-suffix-forms$ <>:<infl_marker> ^-> ([#Consonants##VowelSigns#] __ [#POS##BM##Numbers##TMP#]+ <cvb-adv-part-past>)

$past-tense-exceptions-wrapped$ = $past-tense-exceptions$ <>:<RB>
$cvb-adv-part-past-special-words$ = $past-tense-exceptions-wrapped$ || $past-to-cvb-past$

$cvb-adv-part-past-special$ = $cvb-adv-part-past-special-words$ <>:<infl_marker> ^-> ( __ [#POS##BM##Numbers##TMP#]+ <cvb-adv-part-past>)

$cvb-adv-part-past$ =  $cvb-adv-part-past-special$ || $cvb-adv-part-past-suffix$

% പിൻവിനയെച്ചം - പൂർണ്ണക്രിയക്ക് പിമ്പ് നടക്കേണ്ട അപൂർണ്ണക്രിയയാണ് പിൻവിനയെച്ചം. ആൻ ആണ് ഇതിനുള്ള പ്രത്യയം.
% ധാതുവിനോട് നേരിട്ടോ ഭാവികാലരൂപത്തോടോ ആൻ പ്രത്യയം ചേർക്കാം.
% ഉദാഹരണം:പഠിക്കാൻ ഇരുന്നു, കളിക്കാൻ പോയി, പാടാൻ പറഞ്ഞു.

$cvb-adv-part-future$ =  {ുക}:{ാൻ} <>:<infl_marker> ^-> ([#Consonants#]+ __ [#POS##BM##Numbers##TMP#]+  <cvb-adv-part-future>)

% നടുവിനയെച്ചം Absolute verb
% കാലം,പ്രകാരം, പുരുഷൻ ഇത്യാദി ഉപാധികളൊന്നുമില്ലാതെ കേവലമായ ക്രിയയെയാണ് നടുവിനയെച്ചം കുറിക്കുന്നത്.
% ക, അ, ഉക എന്നിവയാണ് പ്രത്യയങ്ങൾ. ഉക എല്ലാ ധാതുക്കളോടും ചേർക്കാം.
% എന്നാൽ അ, ക എന്നിവ എല്ലാ ധാതുക്കളോടും ചേർക്കാറില്ല. പറ, പറക, പറയുക എന്നിവയാണ് നടുവിനയെച്ച രൂപങ്ങൾ.

$cvb-adv-part-absolute-forms$ = {യുക}:{യ} | {യ്യുക}:{യ്} | {കുക} : {ക} | {ടുക}:{ട}
$cvb-adv-part-absolute$ = $cvb-adv-part-absolute-forms$ <>:<infl_marker> ^-> ([#Letters#]+ __ [#POS##BM##Numbers##TMP#]+ <cvb-adv-part-absolute>)

% പാക്ഷിക വിനയെച്ചം
% പൂർണ്ണക്രിയ നടക്കണമെങ്കിൽ നടക്കേണ്ട അപൂർണ്ണക്രിയയാണ് പാക്ഷിക വിനയെച്ചം.
% ആൽ, ഇൽ, ആകിൽ, എങ്കിൽ എന്നിവയാണ് പ്രത്യയങ്ങൾ.

$cvb-adv-part-conditional-forms$ = {ുക}:{ിൽ} | {ുക}:{യാൽ} | {ുക}:{യാകിൽ} | {ുക}:{യെങ്കിൽ}
$cvb-adv-part-conditional$ = $cvb-adv-part-conditional-forms$ <>:<infl_marker> ^-> ([#Letters#]+ __ [#POS##BM##Numbers##TMP#]+ <cvb-adv-part-conditional>)
$converbs$ = $cvb-adv-part-future$ ||\
	$cvb-adv-part-past$ ||\
	$cvb-adv-part-absolute$ || \
	$cvb-adv-part-conditional$

$converbs$
