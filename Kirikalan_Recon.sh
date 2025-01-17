#!/bin/bash

echo -e "\033[31m"
echo


echo -e " __          __  _                           _______    _______ _             _____                _     _  ___      _ _         _               __  __             _         _____ _                    "
echo -e " \ \        / / | |                         |__   __|  |__   __| |           / ____|              | |   | |/ (_)    (_| |       | |             |  \/  |           (_)       / ____| |                   "
echo -e "  \ \  /\  / ___| | ___ ___  _ __ ___   ___    | | ___    | |  | |__   ___  | |  __ _ __ ___  __ _| |_  | ' / _ _ __ _| | ____ _| | __ _ _ __   | \  / | __ _  __ _ _  ___  | (___ | |__   _____      __ "
echo -e "   \ \/  \/ / _ | |/ __/ _ \| '_  _ \ / _ \    | |/ _ \   | |  | '_ \ / _ \ | | |_ | '__/ _ \/ _  | __| |  < | | '__| | |/ / _  | |/ _  | '_ \  | |\/| |/ _  |/ _  | |/ __|  \___ \| '_ \ / _ \ \ /\ / / "
echo -e "    \  /\  |  __| | (_| (_) | | | | | |  __/   | | (_) |  | |  | | | |  __/ | |__| | | |  __| (_| | |_  | . \| | |  | |   | (_| | | (_| | | | | | |  | | (_| | (_| | | (__   ____) | | | | (_) \ V  V /  "
echo -e "     \/  \/ \___|_|\___\___/|_| |_| |_|\___|   |_|\___/   |_|  |_| |_|\___|  \_____|_|  \___|\__,_|\__| |_|\_|_|_|  |_|_|\_\__,_|_|\__,_|_| |_| |_|  |_|\__,_|\__, |_|\___| |_____/|_| |_|\___/ \_/\_/   "
echo -e "                                                                                                                                                                  __/ |                                     "
echo -e "                                                                                                                                                                 |___/                                      "

echo
echo "   *****    "
echo "   *****    "
echo "  *     *   "
echo " *  O O  *  "
echo " *   ^   *  "
echo " *  ---  *  "
echo "  * \-/ *   "
echo "   ****     "
echo "  *******   "
echo
echo "Ippa Namma Indha Show la Recon Panna Porom!!!! "
echo
echo "  1. Whois "
echo "  2. Sslscan "
echo "  3. Nmap "
echo "  4. Dig "
echo "  5. Amass "
echo "  6. Nslookup"
echo "  7. theHarvester"
#echo "  8. Dirb "
echo "  8. Subfinder"
echo "  9. Sublist3r"
echo "  10. Sslyze"
echo "  11. Finalrecon"
echo "  12. Waybackurls "
echo

echo " Domain use panni na aduthu oruka IP yum potu paru da Thappuilla "
echo
echo " Edha da Scan Pannanum IP ya illa Domain ah ??? "
echo
echo " Example: 192.168.1.1 | www.example.com "
echo
read -p "Seekrama Sollu : " ip

#Creating a directory within the same directory as the Bash script
Kirikalan="$(dirname "$0")"
mkdir -p "$Kirikalan/Kirikalan_Output"
mkdir -p "$Kirikalan/Kirikalan_Output/$ip"

#Output Files
Whois="$Kirikalan/Kirikalan_Output/$ip/Whois_Output_$ip.txt"
Sslscan="$Kirikalan/Kirikalan_Output/$ip/Sslscan_Output_$ip.txt"
Nmap="$Kirikalan/Kirikalan_Output/$ip/Nmap_Output_$ip.txt"
Dig="$Kirikalan/Kirikalan_Output/$ip/Dig_Output_$ip.txt"
Amass="$Kirikalan/Kirikalan_Output/$ip/Amass_Output_$ip.txt"
Nslookup="$Kirikalan/Kirikalan_Output/$ip/Nslookup_Output_$ip.txt"
theHarvester="$Kirikalan/Kirikalan_Output/$ip/theHarvester_Output_$ip.txt"
Subfinder="$Kirikalan/Kirikalan_Output/$ip/Subfinder_Output_$ip.txt"
Sublist3r="$Kirikalan/Kirikalan_Output/$ip/Sublist3r_Output_$ip.txt"
#Dirb="$Kirikalan/Kirikalan_Output/$ip/Dirb_Output_$ip.txt"
Sslyze="$Kirikalan/Kirikalan_Output/$ip/Sslyze_Output_$ip.txt"
Finalrecon="$Kirikalan/Kirikalan_Output/$ip/Finalrecon_Output_$ip.txt"
Waybackurls="$Kirikalan/Kirikalan_Output/$ip/Waybackurls_Output_$ip.txt"


#Whois

echo -e "\033[32m"

echo -e " __          ___           _      "
echo -e " \ \        / / |         (_)     "
echo -e "  \ \  /\  / /| |__   ___  _ ___  "
echo -e "   \ \/  \/ / | '_ \ / _ \| / __| "
echo -e "    \  /\  /  | | | | (_) | \__ \ "
echo -e "     \/  \/   |_| |_|\___/|_|___/ "
echo
echo "This will provide domain registration details for the target."                                 
echo
echo "Running whois On : $ip"
echo
whois $ip > "$Whois"
echo

#Sslscan
echo -e "\033[33m"

echo -e "   _____     _  _____                  "
echo -e "  / ____|   | |/ ____|                 "
echo -e " | (___  ___| | (___   ___ __ _ _ __   "
echo -e "  \___ \/ __| |\___ \ / __/ _' | '_ \  "
echo -e "  ____) \__ \ |____) | (_| (_| | | | | "
echo -e " |_____/|___/_|_____/ \___\__,_|_| |_| "
echo
echo "This will scan SSL certificates and vulnerabilities."
echo
echo "Running Sslscan On : $ip"
echo
sslscan $ip > "$Sslscan"
echo

#Nmap
echo -e "\033[34m"

echo -e "  _   _                        "
echo -e " | \ | |                       "
echo -e " |  \| |_ __ ___   __ _ ____   "
echo -e " | .   |  _   _ \ / _  |  _ \  "
echo -e " | |\  | | | | | | (_| | |_) | "
echo -e " |_| \_|_| |_| |_|\__,_| .__/  "
echo -e "                       | |     "
echo -e "                       |_|     "

echo
echo "Running Nmap Scan On : $ip"
echo
echo "This will run a basic Nmap scan and an aggressive scan."
echo "The output will include open ports and additional information."
echo
nmap -Pn $ip > "$Nmap"
nmap -A $ip >> "$Nmap"
nmap -O -sV $ip >> "$Nmap"
echo

#Dig
echo -e "\033[35m"

echo -e "   _____  _        "
echo -e "  |  __ \(_)       "
echo -e "  | |  | |_  __ _  "
echo -e "  | |  | | |/ _  | "
echo -e "  | |__| | | (_| | "
echo -e "  |_____/|_|\__, | "
echo -e "             __/ | "
echo -e "            |___/  "


echo
echo "Running Dig On : $ip"
echo
echo "This will perform a DNS lookup for the given target."
echo
dig $ip > "$Dig"
echo


#Amass
echo -e "\033[37m"

echo -e "   __ _ _ __ ___   __ _ ___ ___  "
echo -e "  / _  |  _   _ \ / _  / __/ __| "
echo -e " | (_| | | | | | | (_| \__ \__ \ "
echo -e "  \__,_|_| |_| |_|\__,_|___/___/ "

echo
echo "Running Amass On : $ip"
echo
echo "This will perform subdomain enumeration for the given domain."
echo
amass enum -d $ip > "$Amass"
echo

#Nslookup

echo "            _             _                 "
echo "           | |           | |                "
echo "  _ __  ___| | ___   ___ | | ___   _ _ __   " 
echo " | '_ \/ __| |/ _ \ / _ \| |/ / | | | '_ \  "
echo " | | | \__ \ | (_) | (_) |   <| |_| | |_) | "
echo " |_| |_|___/_|\___/ \___/|_|\_\_\__,_| .__/ "
echo "                                    | |     "
echo "                                    |_|     "

echo
echo "Running Nslookup On : $ip"
echo
echo "This will perform DNS lookup for the given domain."
echo
nslookup $ip > "$Nslookup"
echo

#theHarvester
echo -e "\033[36m"
                           
echo "  _   _                                           _             "
echo " | |_| |__   ___   /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  "
echo " | __| '_ \ / _ \ / /_/ / _' | '__\ \ / / _ \/ __| __/ _ \ '__| "
echo " | |_| | | |  __// __  / (_| | |   \ V /  __/\__ \ ||  __/ |    "
echo "  \__|_| |_|\___|\/ /_/ \__,_|_|    \_/ \___||___/\__\___|_|    "
                                                              

echo
echo "Running theHarvester On : $ip"
echo
echo "This will perform subdomain enumeration for the given domain using theHarvester."
echo
theHarvester -d $ip -b bing -s > "$theHarvester"
echo

#Subfinder                                                             

echo "               __    _____           __          "
echo "   _______  __/ /_  / __(_)___  ____/ /__  _____ "
echo "  / ___/ / / / __ \/ /_/ / __ \/ __  / _ \/ ___/ "
echo " (__  ) /_/ / /_/ / __/ / / / / /_/ /  __/ /     "
echo "/____/\__,_/_.___/_/ /_/_/ /_/\__,_/\___/_/      "
                                              
echo
echo "Running Subfinder On : $ip"
echo
echo "This will perform subdomain enumeration for the given domain using Subfinder."
echo
subfinder -d $ip -r 8.8.8.8,1.1.1.1 > "$Subfinder"
echo

#Sublist3r

echo "  ____        _     _ _     _   _____       "
echo " / ___| _   _| |__ | (_)___| |_|___ / _ __  " 
echo " \___ \| | | | '_ \| | / __| __| |_ \| '__| "
echo "  ___) | |_| | |_) | | \__ \ |_ ___) | |    "
echo " |____/ \__,_|_.__/|_|_|___/\__|____/|_|    "
                                           
echo
echo "Running Sublist3r On : $ip"
echo
echo "This will perform subdomain enumeration for the given domain using Sublist3r."
echo
sublist3r -d $ip -b > "$Sublist3r"
echo

#Sslyze

echo -e "  ___          _                        "
echo -e " (  _'\       (_ )                      "
echo -e " | (_(_)  ___  | |  _   _  ____    __   "
echo -e " '\__ \ /',__) | | ( ) ( )(_  ,) /'__'\ "
echo -e " ( )_) |\__, \ | | | (_) | /'/_ (  ___/ "
echo -e " '\____)(____/(___)'\__, |(____)'\____) "
echo -e "                   ( )_| |              "
echo -e "                   '\___/'              "

                                           
echo
echo "Running Sslyze On : $ip"
echo
echo "This will perform SSL/TLS configuration analysis for the given domain."
echo
sslyze $ip > "$Sslyze"
echo

#Finalrecon


echo -e "  ______   __     __   __     ______     __               "
echo -e " /\  ___\ /\ \   /\ '-.\ \   /\  __ \   /\ \              "
echo -e " \ \  __\ \ \ \  \ \ \-.  \  \ \  __ \  \ \ \____         "
echo -e "  \ \_\    \ \_\  \ \_\  \_\  \ \_\ \_\  \ \_____\        "
echo -e "   \/_/     \/_/   \/_/ \/_/   \/_/\/_/   \/_____/        "
                                                        
echo -e "  ______     ______     ______     ______     __   __     "
echo -e " /\  == \   /\  ___\   /\  ___\   /\  __ \   /\ '-.\ \    "
echo -e " \ \  __<   \ \  __\   \ \ \____  \ \ \/\ \  \ \ \-.  \   "
echo -e "  \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_\  \_\  "
echo -e "   \/_/ /_/   \/_____/   \/_____/   \/_____/   \/_/ \/_/  "
                                                        


echo
echo "Running Finalrecon On : $ip"
echo
echo "This will perform DNS enumeration, subdomain enumeration, and crawling for the given domain."
echo
finalrecon --dns --url https://$ip > "$Finalrecon"
finalrecon --sub --url https://$ip >> "$Finalrecon"
finalrecon --crawl --url https://$ip >> "$Finalrecon"
echo

#Waybackurls 

echo -e " ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░       ░▒▓███████▓▒░  "
echo -e " ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         "
echo -e " ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░         "
echo -e " ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░░▒▓██████▓▒░░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░      ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░       ░▒▓██████▓▒░   "
echo -e " ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░  "
echo -e " ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░             ░▒▓█▓▒░  "
echo -e "  ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓███████▓▒░   "
                                                                                                                                                        
         
echo
echo "Running Finalrecon On : $ip"
echo
echo "This will perform crawling for the given domain."
echo
waybackurls $ip > "$Waybackurls"
echo





#Dirb
#echo -e "\033[36m"

#echo -e "  _____ _____ _____  ____   "
#echo -e " |  __ \_   _|  __ \|  _ \  "
#echo -e " | |  | || | | |__) | |_) | "
#echo -e " | |  | || | |  _  /|  _ <  "
#echo -e " | |__| || |_| | \ \| |_) | "
#echo -e " |_____/_____|_|  \_\____/  "
                           

#echo
#echo "Running DIRB On : $ip"
#echo
#echo "This will perform directory brute-forcing on the target."
#echo
#dirb https://$ip > "$Dirb"
#echo


echo -e "\033[31m"

echo "  
  _  __          _ _         _               _                                           _      _           _   _   _            __  __             _         _____ _                   
 | |/ /         (_) |       | |             | |                                         | |    | |         | | | | | |          |  \/  |           (_)       / ____| |                  
 | ' / __ _ _ __ _| | ____ _| | __ _ _ __   | |__   __ _ ___    ___ ___  _ __ ___  _ __ | | ___| |_ ___  __| | | |_| |__   ___  | \  / | __ _  __ _ _  ___  | (___ | |__   _____      __
 |  < / _' | '__| | |/ / _' | |/ _' | '_ \  | '_ \ / _' / __|  / __/ _ \| '_ ' _ \| '_ \| |/ _ \ __/ _ \/ _' | | __| '_ \ / _ \ | |\/| |/ _' |/ _' | |/ __|  \___ \| '_ \ / _ \ \ /\ / /
 | . \ (_| | |  | |   < (_| | | (_| | | | | | | | | (_| \__ \ | (_| (_) | | | | | | |_) | |  __/ ||  __/ (_| | | |_| | | |  __/ | |  | | (_| | (_| | | (__   ____) | | | | (_) \ V  V / 
 |_|\_\__,_|_|  |_|_|\_\__,_|_|\__,_|_| |_| |_| |_|\__,_|___/  \___\___/|_| |_| |_| .__/|_|\___|\__\___|\__,_|  \__|_| |_|\___| |_|  |_|\__,_|\__, |_|\___| |_____/|_| |_|\___/ \_/\_/  
                                                                                  | |                                                          __/ |                                    
                                                                                  |_|                                                         |___/                                     
  "
echo
echo "
______     _   _____       _               _    ______    _     _             _              _               _                                    
| ___ \   (_) |  _  |     | |             | |   |  ___|  | |   | |           | |            | |             | |                                   
| |_/ /__  _  | | | |_   _| |_ _ __  _   _| |_  | |_ ___ | | __| | ___ _ __  | | __ _    ___| |__   ___  ___| | __  _ __   __ _ _ __  _ __  _   _ 
|  __/ _ \| | | | | | | | | __| '_ \| | | | __| |  _/ _ \| |/ _' |/ _ \ '__| | |/ _' |  / __| '_ \ / _ \/ __| |/ / | '_ \ / _' | '_ \| '_ \| | | |
| | | (_) | | \ \_/ / |_| | |_| |_) | |_| | |_  | || (_) | | (_| |  __/ |    | | (_| | | (__| | | |  __/ (__|   <  | |_) | (_| | | | | | | | |_| |
\_|  \___/|_|  \___/ \__,_|\__| .__/ \__,_|\__| \_| \___/|_|\__,_|\___|_|    |_|\__,_|  \___|_| |_|\___|\___|_|\_\ | .__/ \__,_|_| |_|_| |_|\__,_|
                              | |                                                                                  | |                            
                              |_|                                                                                  |_|                            "

echo
read -p " 
  _  __         _       _                _____       _   _     _                  _          __     __  _ _                    _  __    _                 _           _                 
 | |/ /        | |     (_)              / ____|     | | | |   (_)                | |         \ \   / / | | |                  | |/ /   | |               | |         | |                
 | ' / __ _  __| | __ _ _ _   _  __ _  | (___   __ _| |_| |__  _ _   _  __ _  ___| |__  _   _ \ \_/ /__| | | __ _ _ __ _   _  | ' / ___| | __ _ _ __ ___ | |__   __ _| | __ _ _ __ ___  
 |  < / _' |/ _' |/ _' | | | | |/ _' |  \___ \ / _' | __| '_ \| | | | |/ _' |/ __| '_ \| | | | \   / _ \ | |/ _' | '__| | | | |  < / _ \ |/ _' | '_ '' _ \|'_ \ /  ' | |/ _' | '_ ' _ \ 
 | . \ (_| | (_| | (_| | | |_| | (_| |  ____) | (_| | |_| | | | | |_| | (_| | (__| | | | |_| |  | |  __/ | | (_| | |  | |_| | | . \  __/ | (_| | | | | | | |_) | (_| | | (_| | | | | | |
 |_|\_\__,_|\__,_|\__,_|_|\__, |\__,_| |_____/ \__,_|\__|_| |_|_|\__, |\__,_|\___|_| |_|\__,_|  |_|\___|_|_|\__,_|_|   \__,_| |_|\_\___|_|\__,_|_| |_| |_|_.__/ \__,_|_|\__,_|_| |_| |_|
                           __/ |                                  __/ |                                                                                                                   
                          |___/                                  |___/    


Press Enter To Exit.... "



