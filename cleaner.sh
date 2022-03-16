PKG=com.atmos
for PKGS in $PKG; do
  rm -rf /data/user/*/$PKGS/cache/*
done

