# VPC & VPN Integration with Transit Gateway

These are the steps used to create the integration

1. Create Customer Gateway
2. Create Transit Gateway
3. Create VPN attach and CG and TGW
4. Repeat step 3, 3 times for all tunnels
5. Add Static Routes to TGW routes for each TGW attachment on the TGW Route Tables
6. Add Routes and TGW to specific subnet for EC2 instance on the Subnet Route Tables