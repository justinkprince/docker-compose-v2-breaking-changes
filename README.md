# Docker compose v2 breaking changes

With v2 of Docker Compose, there were some changes to how ENV files
are parsed regarding inner double quotes. The fix is to replace the inner double
quotes with single quotes and then wrap the entire value with double quotes.

Another option is to disable v2 by running:

```
docker-compose disable-v2
```

It can re-enabled by running:

```
docker-compose enable-v2
```

## Example

```
CREDENTIALS={"username": "admin", "password": "pass"}
```

The above must be changed to this:

```
CREDENTIALS="{'username': 'admin', 'password': 'pass'}"
```

## Tests

To see this in action, this repo includes some test cases.

### V2

To see the new format passing test case, run:

```
make v2-new
```

To see the old format failing test case, run:

```
make v2-old
```

### V1

To see the new format passing test case, run:

```
make v1-new
```

To see the old format passing test case, run:

```
make v1-old
```
