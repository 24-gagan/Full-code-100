from ATM import config_file
from var.config_file import output1
***Setting***
Library SSH

***variables***
$Host ipaddress
$Username ipaddress
$Password ipaddress

***Test Cases***
[Title]  Withdraw money from the atm
Open Connection $Host
Login Username Password
$output output1 Bank
Should Contain 2000
Result Pass