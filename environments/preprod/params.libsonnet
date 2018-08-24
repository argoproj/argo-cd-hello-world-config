local params = std.extVar('__ksonnet/params');
local globals = import 'globals.libsonnet';
local envParams = params + {
  components+: {
    "hello-world-ks"+: {
      name: 'hello-world-ks-preprod',
      image: 'argoprojdemo/argo-cd-hello-world-app:b829c1667d926f496954401ae2df96f5ab53222c',
    },
  },
};

{
  components: {
    [x]: envParams.components[x] + globals
    for x in std.objectFields(envParams.components)
  },
}