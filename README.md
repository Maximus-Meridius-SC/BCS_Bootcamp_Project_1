# BCS_Bootcamp_Project_1
Week 13 Project 1 for Bootcamp

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below. 

![Project1_Diagram.png](https://github.com/Maximus-Meridius-SC/BCS_Bootcamp_Project_1/blob/main/Diagrams/Project1_Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yaml_files file may be used to install only certain pieces of it, such as Filebeat.

  - [yml-files](https://github.com/Maximus-Meridius-SC/BCS_Bootcamp_Project_1/tree/main/Ansible/yml-files/yml-files)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly responcive, in addition to restricting connections to the network.
- Load Balancing ensures that the application will be highly responsive, in addition to restricting connection to the network
- The advantage of a Jumpbox is that restricts access and acts as a gateway for ssh connections in the live enviorment. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the CPU and system Logs.
- Filebeat is used for collecting log events of the server it is installed on._
- MetricBeat is Collects Operation System Metrics such as CPU load, Network Traffic and other related fields. 

The configuration details of each machine may be found below.

| Name     | Function              | IP Address | Operating System |
|----------|-----------------------|------------|------------------|
| Jump Box | Gateway               | 10.0.0.4   | Linux            |
| WEB_1    | Redunant web server 1 | 10.0.0.8   | Linux            |
| WEB_2    | Redunant web server 2 | 10.0.0.9   | Linux            |
| WEB_3    | Redunant web server 3 | 10.0.0.5   | Linux            |
| ELK      | ELK STACK             | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Load Balancer machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Port 80 (TCP over HTTP)

Machines within the network can only be accessed by Ansible Container via the JumpBox using Port 22.
- Jump Box IP 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible   | Allowed IP Addresses |
|----------|-----------------------|----------------------|
| Jump Box | NO                    | 10.0.0.4             |
| WEB_1    | YES                   | 10.0.0.8             |
| WEB_2    | YES                   | 10.0.0.9             |
| WEB_3    | YES                   | 10.0.0.5             |
| ELK      | NO                    | 10.1.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- The advantage of automating configurations with Ansible is efficint synchronicity in deployment across all systems 

The playbook implements the following tasks:
- Checks and installs Docker.io
- Checks and installs Python3-pip
- Checks and installs Docker Module (python)
- Checks and downloads, and run elk container with published ports
- Enable docker service on boot
- Increase virtual memory 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance  

![Elk-container-screenshot.png](https://github.com/Maximus-Meridius-SC/BCS_Bootcamp_Project_1/blob/main/Diagrams/Elk-container-screenshot.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
 
  | Name     |Allowed IP Addresses |
  |----------|---------------------|
  | WEB_1    | 10.0.0.8            |
  | WEB_2    | 10.0.0.9            |
  | WEB_3    | 10.0.0.5            |

We have installed the following Beats on these machines:
- Fileboat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects log files and system logs
- Matricbeat collects metric for CPU Network and other related services 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._


I am adding this here as test to trouble shoot my updating issue 