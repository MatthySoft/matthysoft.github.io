#!/bin/sh
# Copy the latest PDFs and dashboards from damn_fast_dfir into files/.
set -e
cd "$(dirname "$0")"
SRC=../damn_fast_dfir
cp "$SRC"/dfd_print_cheatsheets/pdf/*.pdf files/
cp "$SRC"/Network_Incident_Response_Playbook_generic.pdf files/
cp "$SRC"/net_dashboard.txt "$SRC"/adversary_dashboard.txt files/
git status --short
