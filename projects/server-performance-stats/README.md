# Server Performance Stats

This script shows basic server stats using command line tools available in most Linux servers. Tools used:

- top
- ps
- free
- df
- sed
- awk

The script can be executed using this command:

```
sh ./server-stats.sh
```
Example output:

```
Server Performance Stats

CPU Usage: 0.3%
Memory Usage: 9.6Gi/2.2Gi (18%)
Disk Usage: 270G/12G (4%)

Top 5 processes by CPU usage:
USER       PID  PPID CMD                         %MEM %CPU
test       894    27 /home/test/.vscode-server/b  5.6  1.6
test        84    27 /home/test/.vscode-server/b  6.5  1.4
test        27    23 /home/test/.vscode-server/b  0.7  0.3
test       139    27 /home/test/.vscode-server/b  0.5  0.1
root         1     0 /init                        0.0  0.0
Top 5 processes by memory usage:
USER       PID  PPID CMD                         %MEM %CPU
test        84    27 /home/test/.vscode-server/b  6.5  1.4
test       894    27 /home/test/.vscode-server/b  5.6  1.6
test       214    84 /home/test/.vscode-server/b  1.3  0.0
test       213    84 /home/test/.vscode-server/b  1.0  0.0
test        27    23 /home/test/.vscode-server/b  0.7  0.3
```

# Project URL
[https://roadmap.sh/projects/server-stats](https://roadmap.sh/projects/server-stats)