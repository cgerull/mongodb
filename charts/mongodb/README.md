# mongodb

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 7.0.0](https://img.shields.io/badge/AppVersion-7.0.0-informational?style=flat-square)

A Helm chart for a single mongodb instance

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `2` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| env[0].name | string | `"MONGO_INITDB_ROOT_PASSWORD_FILE"` |  |
| env[0].value | string | `"/etc/secrets/mongodb/mongo_root_pw"` |  |
| env[1].name | string | `"MONGO_INITDB_ROOT_USERNAME"` |  |
| env[1].value | string | `"admin"` |  |
| fullnameOverride | string | `""` |  |
| image.args | string | `""` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"mongo"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.enabled | bool | `false` |  |
| livenessProbe.exec.command[0] | string | `"echo"` |  |
| livenessProbe.exec.command[1] | string | `"db.runCommand(\"ping\").ok"` |  |
| livenessProbe.exec.command[2] | string | `""` |  |
| livenessProbe.exec.command[3] | string | `"mongosh"` |  |
| livenessProbe.exec.command[4] | string | `"localhost:27017/test"` |  |
| livenessProbe.exec.command[5] | string | `"--quiet"` |  |
| livenessProbe.initialDelaySeconds | int | `45` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| localSecrets.enabled | bool | `true` |  |
| localSecrets.secrets[0].mountPath | string | `"/etc/secrets/mongodb"` |  |
| localSecrets.secrets[0].name | string | `"secret-volume"` |  |
| localSecrets.secrets[0].secretName | string | `"mongodb-secret"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.snapshots | bool | `false` |  |
| persistence.volumes[0].accessMode | string | `"ReadWriteOnce"` |  |
| persistence.volumes[0].claimName | string | `"mongodb-data"` |  |
| persistence.volumes[0].mountPath | string | `"/data/db"` |  |
| persistence.volumes[0].name | string | `"mongdb"` |  |
| persistence.volumes[0].size | string | `"1Gi"` |  |
| persistence.volumes[0].storageClass | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| ports[0].containerPort | int | `27017` |  |
| ports[0].name | string | `"mongodb"` |  |
| ports[0].protocol | string | `"TCP"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"1024Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| secrets.awsSecret | string | `"/shared/mySecrets/mongodb"` |  |
| secrets.awsSecretEnabled | bool | `false` |  |
| securityContext | object | `{}` |  |
| service.name | string | `"mongodb"` |  |
| service.port | int | `27017` |  |
| service.targetPort | int | `27017` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| tests.enabled | bool | `false` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
