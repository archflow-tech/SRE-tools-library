# openstack
 

**OpenStack Commands Cheat Sheet**

### Commands Cheat Sheet

| Service  | Command |
| --- | --- |
| **Compute (Nova)** |
| | `openstack server create --flavor <flavor> --image <image> --nic net-id=<network_id> <instance_name>` | Create a new server instance |
| | `openstack server delete <instance_id>` | Delete a server instance |
| | `openstack server show <server_name>` | Show server details |
| | `openstack server list --all-projects` | List all servers across all projects |
| | `openstack server start <server_name>` | Start a server |
| | `openstack server stop <server_name>` | Stop a server |
| | `openstack server pause <server_name>` | Pause a server |
| | `openstack server unpause <server_name>` | Unpause a server |
| | `openstack server reboot <server_name>` | Reboot a server |
| | `openstack server resize <server_name> <new_flavor>` | Resize a server to a new flavor |
| | `openstack server migrate <server_name>` | Migrate a server to a new host |
| | `openstack server backup create <server_name>` | Create a new backup of a server |
| | `openstack server image create <server_name> <image_name>` | Create a new image by taking a snapshot of a server |
| | `openstack server group list` | List all server groups |
| | `openstack server group create <name> <policy>` | Create a new server group with a specific policy |
| | `openstack server group delete <group_id>` | Delete a server group |
| | `openstack server group show <group_id>` | Show server group details |
| | `openstack flavor create <name> <id> <ram> <disk> <vcpus>` | Create a new flavor |
| | `openstack flavor delete <flavor_id>` | Delete a flavor |
| | `openstack flavor list` | List all flavors |
| | `openstack flavor show <flavor_id>` | Show flavor details |
| | `openstack keypair list` | List all key pairs |
| | `openstack keypair create <keypair_name>` | Create a new key pair |
| | `openstack keypair delete <keypair_name>` | Delete a key pair |
| | `openstack keypair show <keypair_name>` | Show key pair details |
| | `openstack hypervisor list` | List all hypervisors |
| | `openstack hypervisor show <hypervisor_id>` | Show hypervisor details |
| | `openstack hypervisor stats show` | Show hypervisor statistics |
| | `openstack host list` | List all hosts |
| | `openstack host show <host_name>` | Show host details |
| | `openstack host set <host_name> --maintenance <on/off>` | Set host maintenance mode |
| | `openstack console url show <server_name>` | Show console URL of a server |
| | `openstack network create <network_name>` | Create a new network |
| **Image (Glance)** |
| | `openstack image list` | List all images |
| | `openstack image create --file <image_file> --disk-format qcow2 --container-format bare --public <image_name>` | Create a new image |
| | `openstack image show <image_id>` | Show image details |
| | `openstack image delete <image_id>` | Delete an image |
| | `openstack image save <image_id> --file <filename>` | Save an image to a file |
| | `openstack image set <image_id> --name <new_name>` | Rename an image |
| | `openstack image unset <image_id> --property <key>` | Unset an image property |
| | `openstack image metadata set <image_id> --property <key=value>` | Set image metadata |
| | `openstack image metadata show <image_id>` | Show image metadata |
| | `openstack image tag set <image_id> <tag>` | Set an image tag |
| | `openstack image tag delete <image_id> <tag>` | Delete an image tag |
| | `openstack image member add <image_id> <project_id>` | Add an image member |
| | `openstack image member remove <image_id> <project_id>` | Remove an image member |
| | `openstack image member list <image_id>` | List all image members |
| **Networking (Neutron)** |
| | `openstack network list` | List all networks |
| | `openstack network create <network_name>` | Create a new network |
| | `openstack network show <network_id>` | Show network details |
| | `openstack network delete <network_id>` | Delete a network |
| | `openstack subnet list` | List all subnets |
| | `openstack subnet create --network <network_id> --subnet-range <subnet_cidr> <subnet_name>` | Create a new subnet |
| | `openstack subnet show <subnet_id>` | Show subnet details |
| | `openstack subnet delete <subnet_id>` | Delete a subnet |
| | `openstack router list` | List all routers |
| | `openstack router create <router_name>` | Create a new router |
| | `openstack router show <router_id>` | Show router details |
| | `openstack router delete <router_id>` | Delete a router |
| | `openstack router set <router_id> --external-gateway <network_id>` | Set the external gateway for a router |
| | `openstack router unset <router_id> --external-gateway` | Unset the external gateway for a router |
| | `openstack router add subnet <router_id> <subnet_id>` | Add a subnet to a router |
| | `openstack router remove subnet <router_id> <subnet_id>` | Remove a subnet from a router |
| | `openstack port list` | List all ports |
| | `openstack port create --network <network_id> <port_name>` | Create a new port |
| | `openstack port show <port_id>` | Show port details |
| | `openstack port delete <port_id>` | Delete a port |
| | `openstack floating ip create <network_id>` | Create a new floating IP |
| | `openstack floating ip list` | List all floating IPs |
| | `openstack floating ip show <floating_ip_id>` | Show floating IP details |
| | `openstack floating ip delete <floating_ip_id>` | Delete a floating IP |
| | `openstack security group list` | List all security groups |
| **Block Storage (Cinder)** |
| | `openstack volume list` | List all volumes |
| | `openstack volume create --size <size_in_gb> <volume_name>` | Create a new volume |
| | `openstack volume show <volume_id>` | Show volume details |
| | `openstack volume delete <volume_id>` | Delete a volume |
| | `openstack volume set <volume_id> --name <new_name>` | Rename a volume |
| | `openstack volume snapshot list` | List all volume snapshots |
| | `openstack volume snapshot create --volume <volume_id> <snapshot_name>` | Create a new volume snapshot |
| | `openstack volume snapshot show <snapshot_id>` | Show volume snapshot details |
| | `openstack volume snapshot delete <snapshot_id>` | Delete a volume snapshot |
| | `openstack volume backup list` | List all volume backups |
| | `openstack volume backup create --name <backup_name> <volume_id>` | Create a new volume backup |
| | `openstack volume backup show <backup_id>` | Show volume backup details |
| | `openstack volume backup delete <backup_id>` | Delete a volume backup |
| | `openstack volume type list` | List all volume types |
| | `openstack volume type create <type_name>` | Create a new volume type |
| | `openstack volume type delete <type_id>` | Delete a volume type |
| | `openstack volume type set <type_id> --property <key=value>` | Set volume type properties |
| | `openstack volume type unset <type_id> --property <key>` | Unset volume type properties |
| | `openstack volume qos associate <qos_policy> <volume_type>` | Associate a QoS policy with a volume type |
| | `openstack volume qos disassociate <qos_policy> <volume_type>` | Disassociate a QoS policy from a volume type |
| | `openstack volume qos list` | List all QoS policies |
| | `openstack volume qos create <qos_name>` | Create a new QoS policy |
| | `openstack volume qos delete <qos_id>` | Delete a QoS policy |
| | `openstack volume qos set <qos_id> --property <key=value>` | Set QoS policy properties |
| | `openstack volume qos unset <qos_id> --property <key>` | Unset QoS policy properties |
| **Identity (Keystone)** |
| | `openstack project list` | List all projects |
| | `openstack project create <project_name>` | Create a new project |
| | `openstack project delete <project_id>` | Delete a project |
| | `openstack project set <project_id> --description <description>` | Set project description |
| | `openstack user list` | List all users |
| | `openstack user create --project <project_id> --password <password> <user_name>` | Create a new user |
| | `openstack user delete <user_id>` | Delete a user |
| | `openstack user set <user_id> --password <password>` | Change a user's password |
| | `openstack user add role --project <project_id> --user <user_id> <role_id>` | Add a role to a user in a project |
| | `openstack user remove role --project <project_id> --user <user_id> <role_id>` | Remove a role from a user in a project |
| | `openstack role list` | List all roles |
| | `openstack role create <role_name>` | Create a new role |
| | `openstack role delete <role_id>` | Delete a role |
| | `openstack token list` | List all tokens |
| | `openstack token issue` | Issue a new token |
| | `openstack token revoke <token_id>` | Revoke a token |
| | `openstack service list` | List all services |
