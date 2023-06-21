"""
The sophus_repositories() macro from //bzl/repositories.bzl must be invoked before loading this bzl
file. This is why we have to split this init macro into a separate bzl file.
"""

load("@rules_eigen//bzl:repositories.bzl", "eigen_repositories")

def sophus_init_deps():
    eigen_repositories()
