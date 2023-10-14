# Ansible Role: nat-gateway

[![CI](https://github.com/msltwtf/ansible-role.nat-gateway/actions/workflows/ci.yml/badge.svg)](https://github.com/msltwtf/ansible-role.nat-gateway/actions/workflows/ci.yml)

# Requirements

None.

# Role Variables

Available variables are listed below, along with default values from `defaults/main.yml`

## nat_gateway_output_interface

```yaml
nat_gateway_output_interface: eth0
```
The output interface for the NAT traffic.

## nat_gateway_networks

**WARNING: Required variable without a default value!!!**

```yaml
nat_gateway_networks: []
```

# Dependencies

None.

# Example Playbook

```yaml
- hosts: all
  vars:
    nat_gateway_networks:
      - 10.0.0.0/8
  roles:
    - msltwtf.nat-gateway
```

# License

MIT
