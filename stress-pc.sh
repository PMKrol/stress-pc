#stress --cpu 8 | glmark2 --run-forever | memtester 3G | watch sensors
#stress --cpu 8 | while true; do phoronix-test-suite batch-run unigine-heaven; done
#stress --cpu 4 | while true; do phoronix-test-suite batch-run unigine-heaven; done | memtester 11G | watch "sensors && echo nVidia: &&  nvidia-smi -q | grep 'Current Temp' && nvidia-smi -q | grep Gpu"
#stress --cpu 8 | while true; do phoronix-test-suite batch-run unigine-heaven; done | memtester 11G

#while true; do phoronix-test-suite batch-run unigine-heaven; done | watch "sensors && echo nVidia: &&  nvidia-smi -q | grep 'Current Temp' && nvidia-smi -q | grep Gpu"
sudo echo "ok"
#./stress.sh | ./heaven.sh > /dev/null | sudo memtester 10G >/dev/null | ./watch.sh
./stress.sh | ./gputest.sh | sudo nice -n 15 sudo memtester 10G >/dev/null | ./watch.sh
