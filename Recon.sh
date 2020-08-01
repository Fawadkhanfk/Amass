
also we need to get the asn numbeer and ip for that we need to create a fiel for the output of nslookup or u have any other 
 tool for that so we can add that 

amass enum -passive -d [owasp.org](http://owasp.org/) -src


amass intel -asn 46489

amass intel -org uber

amass intel -d [owasp.org](http://owasp.org/) -whois

amass intel -ip -src -cidr 104.154.0.0/15

 amass enum -brute -d [twitch.tv](http://twitch.tv/) -rf
resolvers.txt -w bruteforce.list

amass enum -ip -d [danielmiessler.com](http://danielmiessler.com/)


amass enum -active -d owasp.org -public-dns -brute -src -ip -dir amass4owasp -config /root/amass/config.ini -o amass_results_owasp.txt


amass enum -src -ip -brute --max-dns-queries 1200 -d DOMAIN
this command out a fil which is consist of ips and hosts 
I extract the hosts from this file, to create a file named hosts-amass.txt.
$ cat amass_output/amass.txt | cut -d']' -f 2 | awk '{print $1}' | sort -u > hosts-amass.txt

 cat amass_output/amass.txt | cut -d']' -f2 | awk '{print $2}' | tr ',' '\n' | sort -u > ips-amass.txt
 this 
