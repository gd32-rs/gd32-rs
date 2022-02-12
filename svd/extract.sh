#!/usr/bin/env bash
for f in vendor/*.zip; do
    unzip -juLL $f '**.svd'
done

# since windows treat GD32F403.svd and gd32f303.svd the same file, rename it first
# to make windows happy
mv -f GD32F403.svd GD32F403.svd_

# use dd to copy file and skip BOM in the GigaDevice provided svd file.
dd if=gd32f30x_xd.svd of=gd32f303.svd skip=2 iflag=skip_bytes
dd if=GD32F403.svd_ of=gd32f403.svd skip=2 iflag=skip_bytes
# the svd provided by GigaDevice offical website has non-standard `write` and `read` which
# will make svd2rust panic. replace them to the standard `write-only` and `read-only`
sed -i 's/<access>write<\/access>/<access>write-only<\/access>/g' gd32f303.svd
sed -i 's/<access>read<\/access>/<access>read-only<\/access>/g' gd32f303.svd

sed -i 's/<access>write<\/access>/<access>write-only<\/access>/g' gd32f403.svd
sed -i 's/<access>read<\/access>/<access>read-only<\/access>/g' gd32f403.svd