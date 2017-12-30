#Vowels# = അആഇഈഉഊഋഎഏഐഒഓഔഔ
#VowelSigns# = ാിീുൃെേൊോൗൂൈ
#Anuswara# = ം
#Virama# = ്
#Consonants# = കഖഗഘങചഛജഝഞടഠഡഢണതഥദധനപഫബഭമയരലവശഷസഹളഴറ
#Chillus# = ൻർൽൾൿൺ

% all possible character in Malayalam
#Letters# = #Consonants##Vowels##VowelSigns##Anuswara##Chillus##Virama#

% POS tags
#POS# = <adj><adv><dem><n><np><prn><postp><ij><cnj><qn><v><vaux><num><pnct><eng><deriv> \
	<Noun><Punct><prep><indeclinable><interrogative><aff><neg><quantifier><cardinal><ordinal> \
	<0><1><2><3><4><5><6><7><8><9> \
	<masculine><feminine><neutral>

% Boundary markers
#BM#  = <LB><RB><MB>
#Numbers# = <one><two><three><four><five><six><seven><eight><nine><ten><zero>\
  <ones><half><tens><hundreds><thousands><lakhs><crores>

% other intermediate symbols
#TMP# = <LN><BoW><EoW><infl_marker>

#Digit# = 0123456789
#Perc# = \%
#Nsep# = \.\,
#Apos# = \'
#Punct# = \.\?\!\:\,\;\@\#\^\&\*\(\)\'\"\`\~\>\<

% analysis symbols for inflectional suffixes
#ninfl# = <accusative><vocative><nominative><genitive><dative>\
	<instrumental><locative><sociative><sg><pl>
#vinfl# = <past><future><present><cvb-adv-part-future><cvb-adv-part-conditional>\
	<cvb-adv-part-past><cvb-adv-part-absolute><concessive>

#infl# = #ninfl##vinfl#
%%%%% some character classes that are helpful
#Lsym# = <del><dels><dup><plural><ninfl>

% surface symbols
#Ssym# =#Letters##Digit##Punct##Perc##Nsep##Apos#

% Only the symbols that appear in analysis strings. (this excludes
% the intermediate symbols like morpheme boundaries,)
%

#Asym# = #Ssym##POS##Numbers##infl#

%
% All analysis symbols, including the intermediate ones.
%

#AAsym# = #Asym##BM##TMP##Lsym#
