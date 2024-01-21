# rules_sophus

Bazel rules for building Sophus (https://github.com/strasdat/Sophus)

NOTE: The files that depend on Ceres are not included.

## How To Use

In your WORKSPACE.bazel file:

```
http_archive(
    name = "rules_sophus",
    sha256 = "b3a866cef671f3f1a65a397a1ba78be08b90c495ccc1b17f882844d233d42298",
    strip_prefix = "rules_sophus-sophus-1.22.10-v2",
    urls = ["https://github.com/kgreenek/rules_sophus/archive/refs/tags/sophus-1.22.10-v2.tar.gz"],
)

load("@rules_sophus//bzl:repositories.bzl", "sophus_repositories")

sophus_repositories()

# NOTE: This must be loaded after the call to sophus_repositories().
load("@rules_sophus//bzl:init_deps.bzl", "sophus_init_deps")

sophus_init_deps()
```
