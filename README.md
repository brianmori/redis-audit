# redis-audit

Reusable Redis auditing library and CLI for standalone Redis, Redis Sentinel, and Redis Cluster.

`redis-audit` collects Redis configuration, topology, operational metadata, ACL information, and optional keyspace observations into a normalized audit dataset that can be reused for multiple purposes.

## Requirements and Installation

- Python 3.12 or newer
- Network access from the auditor to the configured Redis/Sentinel/Cluster endpoints
- A read-only Redis ACL identity with the commands required

## Goals

`redis-audit` is designed to answer questions such as:

- Is this Redis deployment configured and operating as expected?
- Are ACL permissions broader than necessary?
- Are application key namespaces suitable for ACL isolation?
- Are there keys outside database 0?
- Are there duplicate keys across independent Redis instances?
- Is an existing Redis Cluster healthy and balanced?
- Is a standalone/Sentinel estate ready to migrate to Redis Cluster?
- What key types, TTL patterns, namespaces, hash tags, and memory characteristics exist?
- How does the Redis estate change between periodic audit runs?
