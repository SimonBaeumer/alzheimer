# Time

## monotonic and real-time

The real time is the best guess of the real-life time. Therefore the system time of day
can be changed, i.e. by `NTP`.

Monotonic time on the other hand is a the time elapsed wall-clock time since some fixed point
in the past. 

If you want to compute the elapsed time between two events observed on the one machine without an intervening reboot, `CLOCK_MONOTONIC` is the best option.

See [StackOverflow](https://stackoverflow.com/questions/3523442/difference-between-clock-realtime-and-clock-monotonic).