#!/bin/sh
set -eu
BASE=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
OUT="$BASE/build"
mkdir -p "$OUT"
CC=${CC:-cc}
{
    "$CC" --version
    uname -srm
    printf '%s\n' 'Flags: -std=c11 -Wall -Wextra -O0 -g'
} > "$OUT/environment.txt"
"$CC" -std=c11 -Wall -Wextra -O0 -g "$BASE/src/vulnerable.c" -o "$OUT/vulnerable"
"$CC" -std=c11 -Wall -Wextra -O0 -g "$BASE/src/fixed.c" -o "$OUT/fixed"
(cd "$OUT" && sha256sum vulnerable fixed > SHA256SUMS)
printf '%s\n' "Built in $OUT; inspect warnings and record tool versions."
