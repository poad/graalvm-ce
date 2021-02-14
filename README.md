# graalvm-ce

![Docker image build push](https://github.com/poad/graalvm-ce/workflows/Docker%20image%20build%20push/badge.svg)
[![GitHub issues](https://img.shields.io/github/issues/poad/graalvm-ce.svg "GitHub issues")](https://github.com/poad/graalvm-ce)
[![GitHub stars](https://img.shields.io/github/stars/poad/graalvm-ce.svg "GitHub stars")](https://github.com/poad/graalvm-ce)

Docker image GraalVM CE.

## Tags

| Tag | Based Java version | with Native Image |
|:---:|:---:|:---:|
| jdk8 | 8  | No  |
| jdk8-native-image | 8  | Yes |
| jdk11 | 11 | No  |
| native-image | 11 | Yes |
| latest | 11 | No  |

## Useage

```$sh
docker run --name graalvm -it poad/graalvm-ce:native-image bash
cd /work
```
