for filename in fhv*.csv; do
      echo "COPY trips
            FROM '/data/nyc-taxi-data/data/$filename'
            WITH (header='false');" | \
              /mapd/bin/mapdql \
              mapd \
              -u $MAPD_USERNAME \
              -p $MAPD_PASSWORD
  done
