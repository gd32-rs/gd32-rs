#!/usr/bin/env bash
for f in vendor/*.zip; do
    unzip -juLL $f '**.svd'
done

# use dd to copy file and skip BOM in the GigaDevice provided svd file.
dd if=gd32f30x_xd.svd of=gd32f303.svd skip=2 iflag=skip_bytes
# the svd provided by GigaDevice offical website has non-standard `write` and `read` which
# will make svd2rust panic. replace them to the standard `write-only` and `read-only`
sed -i 's/<access>write<\/access>/<access>write-only<\/access>/g' gd32f303.svd
sed -i 's/<access>read<\/access>/<access>read-only<\/access>/g' gd32f303.svd