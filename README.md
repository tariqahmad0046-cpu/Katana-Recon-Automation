# 🔥 Katana Recon Automation Toolkit

## 📌 Overview
Katana Recon Automation Toolkit is a bug bounty recon tool that automates:

- Subdomain discovery
- Live host detection
- URL crawling using Katana
- JS file extraction
- API endpoint discovery

---

## 🧠 Tools Used

- subfinder
- httpx
- katana

---

## 📁 Project Structure

Katana-Recon-Automation/
│
├── recon.sh
├── README.md
├── wordlist.txt
│
├── output/
│   ├── subdomains.txt
│   ├── live.txt
│   ├── katana_urls.txt
│   ├── js_files.txt
│   ├── endpoints.txt
│
└── screenshots/

---

## ⚙️ Installation

### Install Go (required)

```bash
sudo apt install golang-go -y
```

---

### Install tools

```bash
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
```

---

### Add PATH

```bash
export PATH=$PATH:~/go/bin
```

---

## 🚀 Usage

```bash
chmod +x recon.sh
./recon.sh
```

Enter target:

```text
example.com
```

---

## 📌 Output Files

| File | Description |
|------|------------|
| subdomains.txt | Discovered subdomains |
| live.txt | Active hosts |
| katana_urls.txt | Crawled URLs |
| js_files.txt | JavaScript files |
| endpoints.txt | API endpoints |

---

## 🧠 Skills Learned

- Recon automation
- Endpoint discovery
- API mapping
- JavaScript analysis
- Bug bounty workflow

---

## ⚠️ Disclaimer

For educational and authorized testing only.

---

## 👨‍💻 Author

Cybersecurity Learner | Bug Bounty Beginner
