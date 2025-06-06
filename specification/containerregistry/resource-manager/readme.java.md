## Java

These settings apply only when `--java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-libraries-for-java clone>`.

``` yaml $(java)
azure-arm: true
fluent: true
namespace: com.microsoft.azure.management.containerregistry
license-header: MICROSOFT_MIT_NO_CODEGEN
payload-flattening-threshold: 1
output-folder: $(azure-libraries-for-java-folder)/azure-mgmt-containerregistry
```

These settings apply only when `--multiapi` is not specified on the command line.

``` yaml $(java) && !$(multiapi)
directive:
  - rename-model:
      from: DockerBuildStep
      to: DockerTaskStep
  - from: containerregistry_build.json
    where: $.definitions.IdentityProperties.properties
    transform: >
      $.principalId['readOnly'] = true;
      $.tenantId['readOnly'] = true;
  - from: containerregistry_build.json
    where: $.definitions.UserIdentityProperties.properties
    transform: >
      $.principalId['readOnly'] = true;
      $.clientId['readOnly'] = true;
```

### Java multi-api

``` yaml $(java) && $(multiapi)
batch:
  - tag: package-2025-05-preview
  - tag: package-2025-04
  - tag: package-2025-03-preview
  - tag: package-2024-11-preview
  - tag: package-2023-11-preview
  - tag: package-2023-08-preview
  - tag: package-2023-07
  - tag: package-2023-01-preview
  - tag: package-2022-12
  - tag: package-2022-02-preview
  - tag: package-2021-12-preview
  - tag: package-2021-09
  - tag: package-2021-08-preview
  - tag: package-2021-06-preview
  - tag: package-2020-11-preview
  - tag: package-2019-12-preview
  - tag: package-2019-06-preview-only
  - tag: package-2019-04-only
  - tag: package-2019-04
  - tag: package-2018-09
  - tag: package-2017-10
  - tag: package-2017-03
```

### Tag: package-2025-05-preview and java

These settings apply only when `--tag=package-2025-05-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2025-05-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2025_05_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2025_05_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2025-04 and java

These settings apply only when `--tag=package-2025-04 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2025-04' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2025_04_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2025_04_01
```

### Tag: package-2025-03-preview and java

These settings apply only when `--tag=package-2025-03-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2025-03-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2025_03_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2025_03_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2024-11-preview and java

These settings apply only when `--tag=package-2024-11-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2024-11-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2024_11_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2024_11_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2023-11-preview and java

These settings apply only when `--tag=package-2023-11-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2023-11-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2023_11_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2023_11_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2023-08-preview and java

These settings apply only when `--tag=package-2023-08-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2023-08-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2023_08_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2023_08_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2023-07 and java

These settings apply only when `--tag=package-2023-07 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2023-07' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2023_07_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2023_07_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2023-01-preview and java

These settings apply only when `--tag=package-2023-01-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2023-01-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2023_01_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2023_01_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2022-12 and java

These settings apply only when `--tag=package-2022-12 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2022-12' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2022_12_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2022_12_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2022-02-preview and java

These settings apply only when `--tag=package-2022-02-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2022-02-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2022_02_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2022_02_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2021-12-preview and java

These settings apply only when `--tag=package-2021-12-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2021-12-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2021_12_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2021_12_01_preview
regenerate-manager: true
generate-interface: true
```


### Tag: package-2021-09 and java

These settings apply only when `--tag=package-2021-09 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2021-09' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2021_09_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2021_09_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2021-08-preview and java

These settings apply only when `--tag=package-2021-08-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2021-08-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2021_08_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2021_08_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2021-06-preview and java

These settings apply only when `--tag=package-2021-06-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2021-06-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2021_06_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2021_06_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2020-11-preview and java

These settings apply only when `--tag=package-2020-11-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2020-11-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2020_11_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2020_11_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2019-12-preview and java

These settings apply only when `--tag=package-2019-12-preview --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2019-12-preview' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2019_12_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2019_12_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2019-06-preview-only and java

These settings apply only when `--tag=package-2019-06-preview-only --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2019-06-preview-only' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2019_06_01_preview
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2019_06_01_preview
regenerate-manager: true
generate-interface: true
```

### Tag: package-2019-04-only and java

These settings apply only when `--tag=package-2019-04-only --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2019-04-only' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2019_04_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2019_04_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2019-04 and java

These settings apply only when `--tag=package-2019-04 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2019-04' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2019_04_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2019_04_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2018-09 and java

These settings apply only when `--tag=package-2018-09 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2018-09' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2018_09_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2018_09_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2017-10 and java

These settings apply only when `--tag=package-2017-10 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2017-10' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2017_10_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2017_10_01
regenerate-manager: true
generate-interface: true
```

### Tag: package-2017-03 and java

These settings apply only when `--tag=package-2017-03 --java` is specified on the command line.
Please also specify `--azure-libraries-for-java-folder=<path to the root directory of your azure-sdk-for-java clone>`.

``` yaml $(tag) == 'package-2017-03' && $(java) && $(multiapi)
java:
  namespace: com.microsoft.azure.management.containerregistry.v2017_03_01
  output-folder: $(azure-libraries-for-java-folder)/sdk/containerregistry/mgmt-v2017_03_01
regenerate-manager: true
generate-interface: true
```
