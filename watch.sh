watch --interval 1 \
'sensors && echo nVidia: \
&& nvidia-smi -q | grep "GPU Current Temp" \
&& nvidia-smi -q | grep Gpu \
&& echo "" \
&& ps -C GpuTest,stress-ng-cpu,memtester -o pid,%cpu,ni,comm'
#&& mpstat'
