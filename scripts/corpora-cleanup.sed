# Misc clean up on coverage corpora, lexicon
# Example: sed -i -f corpora-cleanup.sed ../tests/coverage/*.txt
# sed -i -f corpora-cleanup.sed ../tests/coverage/*.txt
# Chillu normalization
s/ന്‍/ൻ/g
s/ള്‍/ൾ/g
s/ല്‍/ൽ/g
s/ര്‍/ർ/g
s/ന്‍/ൻ/g
s/ണ്‍/ൺ/g
# Remove ZWNJ at end of words
s/\xE2\x80\x8C$//g
# Remove all other ZWJ
s/\xE2\x80\x8D$//g
# Replace old au sign with new one
s/‍ൌ/ൗ/g

#Common mistakes
s/പക്ഷെ/പക്ഷേ/g
s/ു‌/ു/g
s/ി‌/ു/g
s/ോ‌/ോ/g
s/ാ‌/ാ/g