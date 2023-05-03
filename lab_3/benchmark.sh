echo "#######################################################################################"
PGPASSWORD=password pgbench -h 127.0.0.1 -U postgres -c 10 -T 300 --no-vacuum -f bench_1.sql lab_3
echo "#######################################################################################"
PGPASSWORD=password pgbench -h 127.0.0.1 -U postgres -c 10 -T 300 --no-vacuum -f bench_2.sql lab_3
echo "########################################################################################"
PGPASSWORD=password pgbench -h 127.0.0.1 -U postgres -c 10 -T 300 --no-vacuum -f bench_3.sql lab_3