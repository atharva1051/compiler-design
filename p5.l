%{
#include "y.tab.h"
%}
%%
[a-z] return L;
[0-9] return D;

%%

