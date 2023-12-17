#!/bin/sh

gcc \
-Wall -Wextra -Wextra -Warray-bounds \
-fsanitize=alignment,bool,bounds,builtin,\
float-cast-overflow,integer-divide-by-zero,\
nonnull-attribute,null,pointer-overflow,\
return,returns-nonnull-attribute,shift\
,signed-integer-overflow,unreachable\
,vla-bound,address,undefined \
-O3 \
-fstack-protector-strong \
-fwrapv \
-fpic \
-fno-delete-null-pointer-checks \
-fno-strict-aliasing \
-fno-builtin-printf -fno-builtin-sprintf -fno-builtin-fprintf \
-fno-builtin-memcpy -fno-builtin-memset -fno-builtin-strcpy \
-Warray-bounds \
-Wshift-count-negative \
-Wshift-count-overflow \
-Wdiv-by-zero \
-fno-common \
-fsanitize-undefined-trap-on-error \
-Werror=deprecated-declarations \
code/wisdom-alt.c
