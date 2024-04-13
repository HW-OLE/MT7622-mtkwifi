#!/bin/bash
#copy files
cp -rf package ../
cp -rf target ../
#apply patches
PATCH_DIR_GENERAL="MT7622-mtkwifi/patches/general"
PATCH_DIR_LUCI_OLD="MT7622-mtkwifi/patches/luci_old"
PATCH_DIR_LUCI_NEW="MT7622-mtkwifi/patches/luci_new"

# switch to opewrt topdir
cd ..

# check param
if [ "$1" == "-n" ]; then
    PATCH_DIR_LUCI=$PATCH_DIR_LUCI_NEW
elif [ "$1" == "-o" ]; then
    PATCH_DIR_LUCI=$PATCH_DIR_LUCI_OLD
else
    echo "Error: Invalid argument. Use '-n' for new or '-o' for old."
    exit 1
fi
#apply general patches
for PATCH_FILE in $(ls $PATCH_DIR_GENERAL/*.patch); do
    echo "Applying patch: $PATCH_FILE"
    patch -p0 -f --verbose < $PATCH_FILE
    if [ $? -ne 0 ]; then
        echo "Failed to apply patch: $PATCH_FILE"
        exit 1
    fi
    echo "Patch applied successfully: $PATCH_FILE"
done
#apply luci patches
for PATCH_FILE in $(ls $PATCH_DIR_LUCI/*.patch); do
    echo "Applying patch: $PATCH_FILE"
    patch -p0 -f --verbose < $PATCH_FILE
    if [ $? -ne 0 ]; then
        echo "Failed to apply patch: $PATCH_FILE"
        exit 1
    fi
    echo "Patch applied successfully: $PATCH_FILE"
done


echo "All patches applied successfully."

