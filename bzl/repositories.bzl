"""Macro to load transitive dependencies for sophus"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def sophus_repositories():
    maybe(
        http_archive,
        name = "rules_eigen",
        sha256 = "668d7503e44daa76e68278373afb04e14e962068dbe461e5ad636bb5c9ea9e5e",
        strip_prefix = "rules_eigen-eigen-3.4.0-v0",
        urls = ["https://github.com/kgreenek/rules_eigen/archive/refs/tags/eigen-3.4.0-v0.tar.gz"],
    )

    maybe(
        http_archive,
        name = "sophus",
        build_file = "@rules_sophus//third_party:sophus.BUILD.bazel",
        sha256 = "eb1da440e6250c5efc7637a0611a5b8888875ce6ac22bf7ff6b6769bbc958082",
        strip_prefix = "Sophus-1.22.10",
        urls = ["https://github.com/strasdat/Sophus/archive/refs/tags/1.22.10.tar.gz"],
    )
