0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Then ${0:h} to get plugin’s directory

fpath+=( "${0:h}/functions" )
path+=( "${0:h}/bin" )

local to_load=(${0:h}/functions/*)
autoload ${to_load#functions/*}
