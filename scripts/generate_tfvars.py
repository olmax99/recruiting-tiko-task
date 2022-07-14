#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import json
import git
import argparse


def get_data(n=1):
    obj = []
    for i in range(1, n + 1):
        e = False
        obj.append(
            {
                "tiko_bucket_name": "tiko-bucket-{:03}".format(i),
                "tiko_bucket_version_enabled": bool(e) if i % 2 == 0 else True,
            }
        )

    return {"bucket_config": obj}


def get_target(path):
    git_repo = git.Repo(path, search_parent_directories=True)
    git_root = git_repo.git.rev_parse("--show-toplevel")

    return os.path.join(git_root, "terraform/terraform.tfvars.json")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Create your terraform.tfvars.json")
    parser.add_argument(
        "buckets",
        metavar="<int:number of buckets>",
        type=int,
        help="how many buckets do you want?",
    )

    args = parser.parse_args()
    assert args.buckets <= 100

    r = get_target(os.getcwd())
    with open(r, "w", encoding="utf-8") as f:
        json.dump(get_data(n=args.buckets), f, ensure_ascii=False, indent=4)
