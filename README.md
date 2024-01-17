# rules_sophus

Bazel rules for building Sophus (https://github.com/strasdat/Sophus)

NOTE: The files that depend on Ceres are not included.

## How To Use

In your WORKSPACE.bazel file:

```
http_archive(
    name = "rules_sophus",
    sha256 = "133caa2662fd31eeb8e986312dc1d8022a769527d186665464fda0dc80c24768",
    strip_prefix = "rules_sophus-sophus-1.22.10-v1",
    urls = ["https://github.com/kgreenek/rules_sophus/archive/refs/tags/sophus-1.22.10-v1.tar.gz"],
)

load("@rules_sophus//bzl:repositories.bzl", "sophus_repositories")

sophus_repositories()

# NOTE: This must be loaded after the call to sophus_repositories().
load("@rules_sophus//bzl:init_deps.bzl", "sophus_init_deps")

sophus_init_deps()
```
