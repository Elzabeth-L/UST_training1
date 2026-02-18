import psutil
from tabulate import tabulate
from datetime import datetime

APPROVED_PORTS = [22, 80, 443, 3306]  # Whitelist
REPORT_FILE = "security_report.txt"

connections = psutil.net_connections(kind='inet')
report_data = []

for conn in connections:
    if conn.laddr:
        port = conn.laddr.port
        pid = conn.pid
        try:
            proc_user = psutil.Process(pid).username() if pid else "N/A"
            proc_name = psutil.Process(pid).name() if pid else "N/A"
        except (psutil.NoSuchProcess, psutil.AccessDenied):
            proc_user = "N/A"
            proc_name = "N/A"

        status = "APPROVED" if port in APPROVED_PORTS else "SUSPICIOUS"
        report_data.append([port, pid, proc_name, proc_user, status])

# Sort by port and take first 10
report_data.sort(key=lambda x: x[0])
report_data = report_data[:10]

header = ["Port", "PID", "Process", "User", "Status"]
now = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

report = f"Security Report - {now}\n"
report += tabulate(report_data, headers=header, tablefmt="grid")

with open(REPORT_FILE, "w") as f:
    f.write(report)

print(report)
