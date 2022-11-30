watch --interval 1 \
'sensors && echo nVidia: \
&& nvidia-smi -q | grep "GPU Current Temp" \
&& nvidia-smi -q | grep Gpu \
&& echo "" \
&& ps -C heaven_x64,stress-ng-cpu -o %cpu -o %c '
#&& mpstat'
