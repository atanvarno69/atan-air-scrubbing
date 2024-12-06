#!/usr/bin/env sh

root_path="$(cd -- "$(dirname "${0}")" >/dev/null 2>&1; pwd -P)"
build_path="${root_path}/build"
info="${root_path}/src/info.json"
archive="$(jq -r .name "${info}")_$(jq -r .version "${info}").zip"

[ ! -d "${build_path}" ] && mkdir -p "${build_path}"
[ -f "${build_path}/${archive}" ] && rm "${build_path}/${archive}"
cp "${root_path}/LICENSE.md" "${root_path}/src"
cd "${root_path}"
zip -9 -r "${build_path}/${archive}" src
rm "${root_path}/src/LICENSE.md"
