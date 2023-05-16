echo "#######################################################################################"
PGPASSWORD=postgres pgbench -h 127.0.0.1 -p 5433 -U postgres -c 10 -T 300 --no-vacuum -f bench_1.sql postgres
echo "#######################################################################################"
PGPASSWORD=postgres pgbench -h 127.0.0.1 -p 5433 -U postgres -c 10 -T 300 --no-vacuum -f bench_2.sql postgres