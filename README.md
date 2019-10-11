# DEVOPS Scripts


## About

Helper scripts


## env2json.sh


This script converts operating system ENVIRONMENT variables to json.



### Usage

```bash
env2json.sh [regexp pattern]
```



### Example

For example if OS has this environment variables

 * `ENV_1=foo`
 * `ENV_2=bar`

* `TEST_1=test`

Calling script:

```bash
 env2json.sh ENV_*`
```

Result will bee: 

```json
{"ENV_1":"foo","ENV_2":"bar"}

```





