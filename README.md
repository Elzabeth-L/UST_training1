🚀 Hackathon Linux & Python Automation Scripts

Welcome to the **Ultimate System Automation Playground!** 🎉

This repository is your **one-stop toolbox** for mastering **Linux and Python automation skills**. Whether you want to monitor processes, analyze logs, protect data, or automate backups, we’ve got you covered. 💻🛠️

Think of this as your **hackathon survival kit** — scripts ready to run, learn from, and impress your team! 😎

---

## 🌟 Scenarios & Scripts

---

### 2️⃣ Local Port & Process “Traffic Cop” 🚦

**Skill Focus:** System inspection, security validation 🔍
**Problem Statement:** Something fishy is going on… 🐟 Unauthorized services might be running!

**Objective:**

* Map open ports to PIDs and users 🔌
* Compare results with a trusted whitelist ✅
* Flag suspicious ports ⚠️
* Generate a **structured security report** 📄

**Implementation:**

* **Language:** Python 🐍
* **Modules Used:** `psutil`, `tabulate`
* **Fun Feature:** Flags rogue ports as `SUSPICIOUS` — because we don’t like intruders! 🕵️‍♂️

**Usage:**

```bash
pip install psutil tabulate
python port_traffic_cop.py
```

---

### 3️⃣ Intelligent Log “Anomalizer” 🧠

**Skill Focus:** Log analysis, data processing 📊
**Problem Statement:** Logs don’t always scream “ERROR!” 😱

**Objective:**

* Analyze word frequency in logs 📚
* Detect rare/unusual patterns ✨
* Flag potential anomalies 🚨
* Summarize anomaly insights 📝

**Implementation:**

* **Language:** Python 🐍
* **Modules Used:** `re`, `collections.Counter`
* **Fun Feature:** It’s like giving your logs **a superpower to spot weird behavior!** 🦸‍♂️

**Usage:**

```bash
python log_analyzer.py
```

---

### 9️⃣ Disk Usage Alert Script 💾⚡

**Skill Focus:** Monitoring and alerting 📡
**Problem Statement:** Disk space vanishing like magic… poof! 🪄

**Objective:**

* Monitor disk usage 🧐
* Trigger alerts when threshold exceeded 🚨
* Log alert details 📝
* Run via cron for automation ⏰

**Implementation:**

* **Language:** Bash/Shell 🐚
* **Commands Used:** `df`, `awk`, `tr`, `echo`
* **Fun Feature:** Prevent your server from **crying out of disk space** 😭

**Usage:**

```bash
chmod +x disk_alert.sh
./disk_alert.sh
```

---

### 1️⃣2️⃣ Automated Backup & Cleanup Script 📦✨

**Skill Focus:** Backup automation 💾
**Problem Statement:** Daily backups are tedious… unless automated! 🛌

**Objective:**

* Create timestamped backups ⏱️
* Compress them 🗜️
* Delete old backups based on retention policy 🗑️
* Log backup status 📝

**Implementation:**

* **Language:** Bash/Shell 🐚
* **Commands Used:** `tar`, `gzip`, `find`, `echo`
* **Fun Feature:** Your data now has a **personal bodyguard** protecting it 24/7 🦹‍♀️

**Usage:**

```bash
chmod +x backup_automation.sh
./backup_automation.sh
```

---

## 🔧 Notes & Pro Tips

* **Python Scripts:** Python 3.8+ recommended.
* **Shell Scripts:** Linux or WSL2 required for full functionality.
* **Cron Scheduling:** Automate disk monitoring and backups while you sleep 😴
* **Testing:** Always try scripts on **dummy data first** — no servers were harmed in the making of this repo 🐱

---

## 🎯 Hackathon Fun Factor

* 💡 Learn **real-world automation tricks**
* 🛡️ Boost **server reliability**
* 🕵️‍♂️ Catch suspicious processes like a pro
* 🐍 Python + 🐚 Shell = ultimate combo

Perfect! Thanks for sharing your **self scenario**. I can now add it to your README as a **new scenario**, keeping the same fun, structured, and hackathon-friendly style. Here’s how it would look:

---

### 0️⃣ SELF SCENARIO: PROCESS PRIORITY MANAGEMENT DEMO ⚡

**SKILL FOCUS:** Process management, system control 🖥️
**PROBLEM STATEMENT:** Team needs to **change process priorities** dynamically during operations.

**OBJECTIVE:**

* View top CPU-consuming processes 🧐
* Start sample processes with different priorities 💤🔥
* Change process priorities using `nice` and `renice` 🔧
* Clean up processes automatically 🧹

**IMPLEMENTATION:**

* **Language:** Bash/Shell 🐚
* **Commands Used:** `ps`, `nice`, `renice`, `kill`
* **Fun Feature:** Demonstrates **how to control “who gets CPU first”** — like a traffic cop for processes 🚦

**Usage (Linux / WSL Only):**

```bash
chmod +x process_priority_demo.sh
./process_priority_demo.sh
```

**NOTES:**

* `sudo` is required for negative `nice` values (higher priority) ⚠️
* On Windows Git Bash, `nice` and `renice` have limited functionality — full demo works on Linux or WSL2 🐧
* This script is **safe to run**: it only starts temporary `sleep` processes and cleans them up automatically ✅

**VISUAL FUN:**

* Shows top CPU-consuming processes
* Starts low-priority and high-priority sample tasks
* Updates nice values dynamically
* Prints process info before and after changes
* Terminates all demo processes at the end

