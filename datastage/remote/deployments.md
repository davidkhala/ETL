For Kubernetes/OpenShift Deployments, you need three images:
- `ds-operator`, `ds-px-runtime` and `ds-px-compute`

For remote engine for IBM Cloud, it is okay to use the latest image digests

## `ds-px-runtime`: the core
size:
- Small: 2c8g
- Medium: 4c16g
- Large: 8c32g

[Get latest ds-px-runtime digest](https://github.com/IBM/DataStage/tree/main/RemoteEngine#get-latest-ds-px-runtime-digest)

```
./digest.sh ds-px-runtime
```