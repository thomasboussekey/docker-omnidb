#!/bin/sh

echo "Begin of script"

env | grep OD

echo "OD_BDR::${OD_BDR}"
echo "OD_PGLOGICAL::${OD_PGLOGICAL}"
echo "OD_XL::${OD_XL}"

# BDR
if [ "${OD_BDR}" = "1" ];
then
  echo "Install BDR"
  curl -Lo /tmp/OmniDB_bdr.zip https://omnidb.org/dist/plugins/omnidb-bdr_1.0.0.zip
  unzip /tmp/OmniDB_bdr.zip -d /opt/OmniDB-${OMNIDB_VERSION}/OmniDB/
  ls -al /opt/OmniDB-${OMNIDB_VERSION}/OmniDB/plugins/
fi

# pglogical
if [ "${OD_PGLOGICAL}" = "1" ];
then
  echo "Install pglogical plugin"
  curl -Lo /tmp/OmniDB_pglogical.zip https://omnidb.org/dist/plugins/omnidb-pglogical_1.0.0.zip
  unzip /tmp/OmniDB_pglogical.zip -d /opt/OmniDB-${OMNIDB_VERSION}/OmniDB/
  ls -al /opt/OmniDB-${OMNIDB_VERSION}/OmniDB/plugins/
fi

# xl
if [ "${OD_XL}" = "1" ];
then
  echo "Install pg_xl plugin"
  curl -Lo /tmp/OmniDB_xl.zip https://omnidb.org/dist/plugins/omnidb-xl_1.0.0.zip
  unzip /tmp/OmniDB_xl.zip -d /opt/OmniDB-${OMNIDB_VERSION}/OmniDB/
  ls -al /opt/OmniDB-${OMNIDB_VERSION}/OmniDB/plugins/
fi

echo "End of script"
