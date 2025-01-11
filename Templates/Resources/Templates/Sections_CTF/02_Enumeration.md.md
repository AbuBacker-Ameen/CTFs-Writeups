## 1. Host Discovery
- **Objective**: Confirm that the target is live, identify any additional hosts or subnets if the challenge environment allows.
- **Tools/Commands**: 
  - `ping`, `arp-scan`, `netdiscover`, `nmap -sn`, etc.
- **Findings**: 
  - Target IP(s), hostnames, or any unusual responses.
  
## 2. Port Scanning
- **Objective**: Determine which ports/services are available on the target.
- **Tools/Commands**:
  - `nmap -sC -sV -p- <TARGET_IP>`, `Rustscan`, or any other custom scanning approach.
- **Key Results**:
  - List of open ports, discovered protocols/versions, interesting banners, etc.
- **Observations**:
  - Notable or unusual port usage (e.g., high ports, non-standard services).

## 3. Detailed Service Enumeration
- **Objective**: Dive deeper into each open port or service to find potential entry points.
- **Subsections** can be broken down by service:

### 3.1 HTTP/HTTPS
- **Tools/Commands**:
  - `nikto`, `dirsearch`, `gobuster`, `whatweb`, etc.
- **Interesting Endpoints**:
  - Hidden directories, server headers, potential file uploads, CMS identification, etc.
- **Screenshots / Logs**:
  - Capture any relevant logs or screenshots.

### 3.2 SMB/FTP/SSH/etc.
- **Enumeration Steps**:
  - Specific commands (e.g., `enum4linux-ng` for SMB, `ftp -v` or Hydra for FTP, version checks for SSH).
- **Credentials or Shared Resources**:
  - Potential usernames, open shares, anonymous logins, or misconfigured access.
- **Any Notable Output**:
  - Summaries of commands and findings.

### 3.3 Other Services
- **RDP, Telnet, VNC**, or any specialized ports:
  - Tools used (`rdp-scan`, `telnet`, specialized scripts).
  - Observations (e.g., version vulnerabilities, default credentials, etc.).

## 4. Network/Environment Enumeration
- **Objective**: Identify network architecture, additional hosts, or pivoting possibilities (only if relevant for the challenge).
- **Tools/Commands**:
  - `arp -a`, `ip route`, `netstat` on compromised hosts (if partial access is already gained).
  - Possible pivoting scripts (e.g., `chisel`, `sshuttle`).
- **Findings**:
  - Additional subnets or hosts discovered, trust relationships, etc.

## 5. Summaries & Potential Attack Vectors
- **Objective**: Consolidate all enumeration data to hypothesize likely exploitation paths.
- **Key Observations**:
  - Vulnerable software or old versions found (check CVEs).
  - Possible password weaknesses (e.g., default creds, unprotected shares).
  - Misconfigurations or suspicious endpoints.
- **Next Steps**:
  - Outline which services or vulnerabilities you plan to target first.
  - Any “low-hanging fruit” (e.g., anonymous FTP, open shares) or major vulnerabilities (e.g., known RCE exploit).

## 6. References & Logs
- **Links**:
  - Any official documentation or references that aided in enumerating a specific service.
- **Saved Logs**:
  - Commands outputs or logs stored in `Attachments/logs/` (list them here for easy reference).
- **Screenshots**:
  - Thumbnails or references to images in `Attachments/images/`.

---

## Suggested Workflow
1. **Start Broadly**: Run port scans (e.g., `nmap`) to get an overview. 
2. **Drill Down**: For each service found, run service-specific enumeration (FTP → anonymous login checks, HTTP → directory brute force, etc.). 
3. **Keep Logs & Screenshots**: Store them in `Attachments/logs/` or `Attachments/images/`; reference them here. 
4. **Synthesize Findings**: Conclude with a short bullet list of vulnerabilities or possible exploitation paths. 
5. **Transition to Exploitation**: Move to the next stage once you’ve identified enough potential weaknesses to proceed.