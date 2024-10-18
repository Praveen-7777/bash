#!/bin/bash
domain=$1
mkdir -p domain/$domain
echo "started assetfinder"
assetfinder -subs-only $domain > domain/$domain/asset1.txt
echo "finished assetfinder"
echo "started sublister"
sublist3r -d $domain -o domain/$domain/sublist1.txt
echo "finished sublister"
echo "started sorting"
cat domain/$domain/asset1.txt domain/$domain/sublist1.txt | sort -u > domain/$domain/allsub_domains.txt
echo "finished sorting"
echo "finding active sub_domains"
cat domain/$domain/allsub_domains.txt | httprobe > domain/$domain/allactivesub_domains.txt
