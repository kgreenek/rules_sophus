# rules_sophus

Bazel rules for building Sophus (https://github.com/strasdat/Sophus)

NOTE: The files that depend on Ceres are not included.

## How To Use

In your WORKSPACE.bazel file:

```
http_archive(
    name = "rules_sophus",
    sha256 = "c0193e3a6b766a1d65a43a11e64f37b5ce051ad14f2f10b360071085bb5b65be",
    strip_prefix = "rules_sophus-sophus-1.22.10-v0",
    urls = ["https://github.com/kgreenek/rules_sophus/archive/refs/tags/sophus-1.22.10-v0.tar.gz"],
)

load("@rules_sophus//bzl:repositories.bzl", "sophus_repositories")

sophus_repositories()

# NOTE: This must be loaded after the call to sophus_repositories().
load("@rules_sophus//bzl:init_deps.bzl", "sophus_init_deps")

sophus_init_deps()
```
