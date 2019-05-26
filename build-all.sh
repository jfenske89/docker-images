#!/usr/bin/env bash

owner="jfenske89"
docker_files="$(find . -type f -name Dockerfile)"

for docker_file in $docker_files; do
  sub_path="$(dirname ${docker_file})"
  image_name="$(basename ${sub_path})"

  if [[ "${sub_path}" =~ "tags" ]]; then
    root_path="$(dirname $(dirname ${sub_path}))"
    image_name="$(basename $(dirname $(dirname ${sub_path})))"
    tag_name="$(basename ${sub_path})"
    image_name="${owner}/${image_name}:${tag_name}"
  else
    root_path="${sub_path}"
    image_name="${owner}/${image_name}:latest"
  fi

  build_command="docker build --tag ${image_name} --file ${docker_file} ${root_path}"
  echo "Build command: ${build_command}"
  sh -c "${build_command}"
done
