#!/bin/sh

svd2ada STM32H723.svd \
  --output ../source/svd \
  --package A0B.STM32H723.SVD \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-elaboration-code-all \
  --no-vfa-on-types
