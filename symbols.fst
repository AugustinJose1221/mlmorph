#Vowels# = അആഇഈഉഊഋഎഏഐഒഓഔഔഅം
#VowelSigns# = ാിീുൃെേൊോൗൂൈ
#Anuswara# = ം
#Virama# = ്
#Consonants# = കഖഗഘങചഛജഝഞടഠഡഢണതഥദധനപഫബഭമയരലവശഷസഹളഴറ
#Chillus# = ൻർൽൾൿൺ

% all possible character in Malayalam
#Letters# = #Consonants##Vowels##VowelSigns##Anuswara##Chillus##Virama#

% POS tags
#POS# = <adj><adv><dem><n><np><prn><postp><ij><cnj><v><vaux><num><pnct> \
	<Noun><Punct>

% Boundary markers
#BM#  = <RB><MB>
#Numbers# = <one><two><three><four><five><six><seven><eight><nine><ten><zero>\
  <ones><half><tens><hundreds><thousands><lakhs>

% other intermediate symbols
#TMP# = <LN><BoW><EoW>

#Digit# = 0123456789
#Perc# = \%
#Nsep# = \.\,
#Apos# = \'
#Punct# = \.\?\!\:\,\;

% analysis symbols for inflectional suffixes
#infl# = <accusative><nominative><vocative><genitive><dative>\
	<instrumental><locative><sociative><sg><pl>

%%%%% some character classes that are helpful
#Lsym# = <del><dels><dup>

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
