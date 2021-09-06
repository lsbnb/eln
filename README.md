# eln
### Electronic Laboratory Notebook
### This project is provided by Institute of Information Science, Academia Sinica.
### Contact information:
##### Chung-Yen Lin (cylin@iis.sinica.edu.tw); LAB website: http://eln.iis.sinica.edu.tw
### Team members:
##### Shu-Hwa Chen (sophia.emily@gmail.com)
##### Chih-Wei Huang (tima@iis.sinica.edu.tw)
##### Wei Hsuan Chuang  (ccshaney@iis.sinica.edu.tw)
------

### ▲Description
ELN are software programs designed to replace paper laboratory notebooks. Compared with paper lab notebooks, ELNs bring many benefits, including improving search capability, supporting for discussion among many users, providing backup mechanism, and enhancing security. Scientists saving time and therefore increasing productivity through reduced time spent writing experimental records and searching data.

![eln_github1](https://user-images.githubusercontent.com/51230850/132170222-aa098950-c54e-4815-bacf-e326e0d34389.png)

![eln_github2](https://user-images.githubusercontent.com/51230850/132170234-d1e6899e-2d35-42ae-ba9a-587f93089d18.png)

### ▲Installation & Setup: (In Ubuntu or other linux)

### (1) elnctl : You can use this shell script to access ELN
### (2) How to get elnctl

     Step1. docker pull lsbnb/eln
     Step2. docker run -d --name=eln -t -i lsbnb/eln
     Step3. docker cp eln:/usr/local/bin/elnctl $(pwd)
     Step4. docker rm -f eln

### (3) You can use below instructions to install, start, stop and uninstall ELN.
     Install ELN         : ./elnctl install
     Start ELN Service   : ./elnctl start
     Stop ELN Service    : ./elnctl stop
     Uninstall ELN       : ./elnctl uninstall
     Show ELN Version    : ./elnctl version
     Show help           : ./elnctl help

### (4) Install & start ELN
     ./elnctl install
     // You need input your port for ELN service
     // We will create one folder "data" . You data will save in this folder.
     // Your ELN URL is http://[your ip]:[your port]
#### ▲Troubleshooting
     // Sometimes you will see Mysql start fail message when you start ELN. 
     // You only just type below instruction to start mysql.
     docker exec eln service mysql start  

### (5) Stop ELN
     ./elnctl stop

### (5) Start ELN
     ./elnctl start

### (7) Uninstall ELN
     ./elnctl uninstall
     // Your "data" folder will be delete.
------
   
### ▲Backup system

------

### ▲Restore system

------



