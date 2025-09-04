# Server Performance Status (Ubuntu)


A simple Bash script (serverstatus.sh) that prints a quick health report of your Linux server

This project is a Bash-based monitoring tool (serverstatus.sh) that analyzes basic server performance statistics on a Linux system.
It’s a lightweight alternative to heavy monitoring stacks like Nagios or Prometheus — useful for quick health checks or as a teaching project to learn system administration.

---
## What does it give you?
When you run the script, it generates a real-time performance report that includes:

### OS & System Info

Linux distribution & version
System uptime + load average

### CPU Usage

Current CPU usage percentage (calculated from idle time in top)

### Memory Usage

Used vs Total memory in MB

Memory usage percentage

### Disk Usage

Used vs Total disk space (human-readable format)

Overall disk usage percentage

### Processes

Top 5 processes by CPU consumption

Top 5 processes by Memory consumption

### User Information

Currently logged-in users
Last 10 failed login attempts
---

## Why is it useful?

Quick snapshot of server health without installing extra tools

Helps diagnose performance issues (e.g., high CPU/memory usage)

Useful for students & DevOps beginners learning Linux server monitoring

Can be scheduled with cron to keep logs of server activity over time

Lightweight: just Bash + existing Linux commands (top, free, df, ps, etc.)
---
## how to excute this project ?
1. Open a new file with **vim**  
   vim server_status.sh
2. Write the script inside the file and save it
3. Make the script executable
 chmod +x server_status.sh
4. Run the script
./server_status.sh
<img width="1913" height="844" alt="Screenshot 2025-09-04 181810" src="https://github.com/user-attachments/assets/499537b0-8f26-414a-99c8-6bb2cfd8065d" />

---
The Server Performance Status Script is a simple yet effective way to monitor server health in real time.
It provides key insights into CPU, memory, disk usage, processes, and user activity — all with a single command.




---
