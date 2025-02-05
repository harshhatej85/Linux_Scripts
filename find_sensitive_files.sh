#finds all these different sensitive files in linux file system just give it executable permission and run as root owner.
#You can also add more files in the "files" array. 

#!/bin/bash

# array of file names to search for
files=(
".htaccess"
"config.inc.php"
"wp-config.php"
"db-config.php"
"dbconnect.php"
"settings.php"
"database.php"
"conn.php"
"config.php"
"env.php"
"appsettings.json"
".env"
"credentials.json"
"web.config"
"secrets.php"
"admin.php"
"init.php"
"boot.php"
"localsettings.php"
"server.php"
"global.php"
"main.php"
"secure.php"
"default.php"
"user-config.php"
"auth.php"
"vars.php"
"setup.php"
"login.php"
"install.php"
"passwd"
"shadow"
"ssh_config"
"sshd_config"
"id_rsa"
"id_rsa.pub"
"authorized_keys"
"bashrc"
".bash_profile"
".bash_history"
".zshrc"
".zsh_history"
".my.cnf"
"my.cnf"
"config.php"
"nginx.conf"
"site-available"
"httpd.conf"
"apache2.conf"
"main.cf"
"dovecot.conf"
"proftpd.conf"
"docker-compose.yml"
".dockerenv"
".gitconfig"
".git-credentials"
".npmrc"
".ssh/known_hosts"
".aws/credentials"
".azure/credentials"
".gcp/credentials"
".kube/config"
".netrc"
".s3cfg"
".pgpass"
".ftpconfig"
".lftp"
".htpasswd"
".sqlite"
".sqlite3"
"secrets.yml"
"config.yaml"
"config.json"
"config.ini"
"config.xml"
".key"
".p12"
".pem"
".crt"
".csr"
".ovpn"
"vpn.conf"
".rdp"
".vnc"
".remote-desktop"
)

# base directory to start the search
base_dir="/"

echo -e "\n\033[1;34m=============================\033[0m"
echo -e "\033[1;32m Searching for sensitive files \033[0m"
echo -e "\033[1;34m=============================\033[0m\n"

# loop through each file name and use the find command to search 
for file in "${files[@]}"; do
  results=$(find "$base_dir" -type f -name "$file" 2>/dev/null)
  
  if [ -n "$results" ]; then
    count=$(echo "$results" | wc -l)
    echo -e "\033[1;33m[+] Found $count file(s) named \"$file\":\033[0m"
    echo -e "\033[1;36m---------------------------\033[0m"
    echo "$results"
    echo -e "\033[1;36m---------------------------\033[0m\n"
  fi
done

echo -e "\n\033[1;32m Search completed. \033[0m"


