%
% FSTs for nominal inflections
%

#include "symbols.fst"

%%%%%%%%%%%% Noun Inflections %%%%%%%%%%%%%%

%%%%% plural

$plural$ = <pl>:{കൾ} <MB>

#include "symbols.fst"

$noun-reg-infl$ = (\
    {<sg>}:{} |\
    {<nominative>}:{} |\
    {<vocative>}:{െ} |\
    {<accusative>}:{യെ} |\
    {<genitive>}:{യുടെ} |\
    {<dative>}:{യ്ക്ക്} |\
    {<instrumental>}:{യാൽ} |\
    {<locative>}:{യിൽ} |\
    {<sociative>}:{യോടു} )  <MB>

$NINFL$ = $plural$ | $noun-reg-infl$
