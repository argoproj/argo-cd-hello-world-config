local params = std.extVar('__ksonnet/params');
local globals = import 'globals.libsonnet';
local envParams = params + {
  components+: {
    "hello-world-ks"+: {
      name: 'hello-world-ks-preprod',
      image: 'argoprojdemo/argo-cd-hello-world-app:c3501bea0d593b5f1dfbe9419f38d30fc47ac69d',
    },
  },
};

{
  components: {
    [x]: envParams.components[x] + globals
    for x in std.objectFields(envParams.components)
  },
}