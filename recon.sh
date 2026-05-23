#!/bin/bash

echo "======================================"
echo "🔥 Katana Recon Automation Toolkit"
echo "======================================"

read -p "Enter target domain: " domain

mkdir -p output screenshots

echo "[+] Subdomain Enumeration"
subfinder -d $domain -o output/subdomains.txt

echo "[+] Checking live hosts"
cat output/subdomains.txt | httpx -silent > output/live.txt

echo "[+] Crawling URLs with Katana"
katana -list output/live.txt -d 3 -o output/katana_urls.txt

echo "[+] Extracting JS files"
cat output/katana_urls.txt | grep ".js" > output/js_files.txt

echo "[+] Finding API endpoints"
cat output/katana_urls.txt | grep -i "/api/" > output/endpoints.txt

echo "======================================"
echo "✅ Recon Completed Successfully"
echo "======================================"
