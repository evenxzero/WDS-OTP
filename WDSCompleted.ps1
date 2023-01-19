#Telegram Details
$Telegramtoken = "xxxx" #Replace with Telegramtoken
$Telegramchatid = "xxxx" #Replace with Telegramchatid

#Notify
$hostname = $env:COMPUTERNAME
$message = "WDS Completed on: $hostname"

#Invoke Method
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Uri "https://api.telegram.org/bot$($Telegramtoken)/sendMessage?chat_id=$($Telegramchatid)&text=$message"