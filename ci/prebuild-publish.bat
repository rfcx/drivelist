@echo off

if %1 == 12 (
  if %APPVEYOR_REPO_BRANCH% == master (
    if %GITHUB_TOKEN% neq "" (
      npm run prebuild-release -- -u %GITHUB_TOKEN%
    )
  )
)
