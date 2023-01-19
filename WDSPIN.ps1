#Telegram Details
$Telegramtoken = "xxxx" #Replace with Telegramtoken
$Telegramchatid = "xxxx" #Replace with Telegramchatid

$TSProgressUI = new-object -comobject Microsoft.SMS.TSProgressUI
$TSProgressUI.CloseProgressDialog()
Add-Type -AssemblyName System.Windows.Forms
$tsenv = New-Object -COMObject Microsoft.SMS.TSEnvironment
$OSDComputerName = $tsenv.Value("OSDComputerName")
$hostname = $OSDComputerName
$entpin = ""
$pin = Get-Random -Maximum 10000

#Notify
$message = "MDT PIN for $hostname"+ ": " + $pin

#Invoke Method
Invoke-RestMethod -Uri "https://api.telegram.org/bot$($Telegramtoken)/sendMessage?chat_id=$($Telegramchatid)&text=$message"

do {
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') | Out-Null
[Parameter(Mandatory=$true)]
$entpin = [Microsoft.VisualBasic.Interaction]::InputBox('Enter MDT PIN for ' + $hostname, 'Enter OTP', "")
if ($entpin -ne $pin) {
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') | Out-Null
[System.Windows.MessageBox]::Show("Enter Valid MDT PIN.")
}
} while ($entpin -ne $pin)
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
