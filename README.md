# graalvm-ce

![Docker image build push](https://github.com/poad/graalvm-ce/workflows/Docker%20image%20build%20push/badge.svg?branch=main)
[![GitHub issues](https://img.shields.io/github/issues/poad/graalvm-ce.svg "GitHub issues")](https://github.com/poad/graalvm-ce)
[![GitHub stars](https://img.shields.io/github/stars/poad/graalvm-ce.svg "GitHub stars")](https://github.com/poad/graalvm-ce)

Docker image GraalVM CE.

## Tags

| Tag | Based Java version | with Native Image |
|:---:|:---:|:---:|
| jdk17 | 17  | No  |
| jdk17-native-image | 17  | Yes |
| jdk11 | 11 | No  |
| jdk11-native-image | 11  | Yes |
| native-image | 17 | Yes |
| latest | 17 | No  |

## Useage

```$sh
docker run --name graalvm -it poad/graalvm-ce:native-image bash
cd /work
```
