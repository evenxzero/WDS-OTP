
# WDS-OTP (2FA)
 Two-factor authentication (2FA) for Windows Deployment Service using Telegram.

  4-digit Random PIN is generated and sent to the Telegram Channel. 
  Once the 4-digit PIN is entered, the Task Sequence will be executed.



## Environment Variables

To run this project, you will need to fill the following variables on both Powershell Scripts.

`Telegramtoken`

`Telegramchatid`


## Installation

Copy the two script files to your MDT Deployment Share Scripts Folder (X:\DeploymentShare\Scripts) and insert it into your Windows Task Sequence as below.

![App Screenshot](https://i.imgur.com/JLCSZtY.png)
    
## Screenshots

![App Screenshot](https://i.imgur.com/nSmuNKN.jpeg)

![App Screenshot](https://i.imgur.com/6Ov83Tg.jpeg)



## License

[MIT](https://choosealicense.com/licenses/mit/)

