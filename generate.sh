#!/bin/sh

svd2ada svd/STM32H723.svd \
  --output source \
  --package A0B.SVD.STM32H723 \
  --base-types-package A0B.Types.SVD \
  --boolean \
  --no-vfa-on-types
