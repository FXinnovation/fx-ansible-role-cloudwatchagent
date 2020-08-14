# ansible-role-cloudwatchagent

Install AWS Cloudwatch Agent for CentOS / RHEL / Amazon Linux 2.

Notes:

- By default this role doesn't automatically start the service, you can configure that with the variable `cwa_start`.
- This role doesn't manage changes on the configuration

## Requirements

N/A

## Role Variables

| Variable | Description |
|---|---|
| cwa_enable | Should this role enable the service |
| cwa_start | Should this role start the service |
| cwa_configd_list | List of files to copy in the configuration directory |

## Dependencies

N/A

## Example Playbook

```yaml
  tasks:
  - name: 'Install Cloudwatch Agent'
    vars:
      cwa_start: True
      cwa_configd_list:
        - 'files/cwa.json'
    include_role:
      name: 'ansible-role-cloudwatchagent'
```

## License

MIT

## Author Information

FXInnovation Inc