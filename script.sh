#!/bin/bash
# @author: Hamline

# Step 1: cat snyk-report.json| jq -r ".vulnerabilities[].title
# Step 2: cat snyk-report.json| jq -r ".vulnerabilities[].severity
# Step 3: cat snyk-report.json| jq -r ".vulnerabilities[].cvssScore

cat snyk-report.json| jq -r '["vulnerability_title","Severity", "cvssScore"], ["-------------------","--------", "---------"], (.vulnerabilities[] | [.title, .severity, .cvssScore]) | @tsv' | expand -t 65
