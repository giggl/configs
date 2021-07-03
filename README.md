# Giggl Configs

Every config here is pulled by our build servers at 12pm UTC every day, then deployed on the relevant services shortly after.

Please feel free to PR these configs as you see fit. Additions to certain files are up to the sole discretion of the Giggl Team.

## blocked_domains.acl

Format: `ACL`  
Description: Line-separated domains which are blocked by the Giggl Gateway.

### What do we block?

Websites related to crypto-mining, illegal activities, or obscene content (e.g. gore). NSFW content is generally allowed.

## Formats

### ACL

You can use `.domain.tld` to block an entire secondary-level domain space and its subdomains, or just specify the exact FQDN to block one domain.
