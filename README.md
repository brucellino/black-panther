[![Build Status](https://travis-ci.org/brucellino/black-panther.svg?branch=master)](https://travis-ci.org/brucellino/black-panther) [![Dependency Status](https://gemnasium.com/badges/github.com/brucellino/black-panther.svg)](https://gemnasium.com/github.com/brucellino/black-panther) [![Maintainability](https://api.codeclimate.com/v1/badges/0b36b9c680064fbab10f/maintainability)](https://codeclimate.com/github/brucellino/black-panther/maintainability) 
[![DOI](https://zenodo.org/badge/129847892.svg)](https://zenodo.org/badge/latestdoi/129847892)


# Black Panther ✊🏿 Profile

An [InSpec profile](https://www.chef.io/inspec/) for testing the community health of GitHub repositories.
It uses the [GitHub v3 API](https://developer.github.com/v3/)

For more information, please see the [documentation](docs/README.md)
## Community Health

[GitHub](htps://github.com) measures community health in terms of the indicators of community-friendly content of a repository, building on the [Open Source Guide](https://opensource.guide/building-community/).
A strong community can be enabled by clear guides and clear supporting documentation explaining how to contribute, what recognition is given for contributions and ensuring quality in the process of maintaining the repository.

This is done by consuming the repository's [community](https://developer.github.com/v3/repos/community/) object via the GitHub API, and detecting deviations from expected profiles.

## Using

In order to use this profile, you need two environment variables to be set: 

  - `GITHUB_REPO`: GitHub repository you want to test _e.g._ `EGI-Foundation/ansible-style-guide`
  - `GITHUB_TOKEN`: [Personal API Token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
  - [Ruby](https://www.ruby-lang.org/en/downloads/) and `bundler` 
  - The Gems - `bundle install`

Once your environment is set up, you can run the profile : 

```bash
inspec exec .
WARN: Unresolved specs during Gem::Specification.reset:
      net-ssh (< 5.0, >= 2.6.5, >= 2.9)
      ffi (>= 1.0.1)
      multi_json (~> 1.10)
      http-cookie (~> 1.0.0)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.

Profile: Profile for GitHub Community Health (Black Panther)
Version: 0.1.0
Target:  local://

  ✔  Power to the People: Black Panther ✊🏿
     ✔  JSON black-panther.json health_percentage should be > 75
     ✔  JSON black-panther.json ["documentation"] should be
     ✔  JSON black-panther.json ["files", "contributing"] should be
     ✔  JSON black-panther.json ["files", "readme"] should be
     ✔  JSON black-panther.json ["files", "pull_request_template"] should be
  ✔  I fought the law, but the law won: Wynona Earp  👮 ‍♀️
     ✔  JSON black-panther.json ["files", "code_of_conduct"] should be
     ✔  JSON black-panther.json ["files", "license", "key"] should match ".*pache.*"
     ✔  JSON black-panther.json ["files", "license", "spdx_id"] should cmp == "Apache-2.0"


Profile Summary: 2 successful controls, 0 control failures, 0 controls skipped
Test Summary: 8 successful, 0 failures, 0 skipped
```

You can add this to your CI pipeline - see the accompanying `.travis.yml`
# Find it in the supermarket

This is an Inspec profile registered in the Chef Supermarket.

```bash 
inspec supermarket info brucellino/black-panther
name:   black-panther
owner:  brucellino
url:    https://github.com/brucellino/black-panther

description:   A GitHub community health profile compliance check
```

You can add it to your compliance profile by add a `depends` section to your `inspec.yml` :

```
depends:
- name: supermarket-profile
  supermarket: brucellino/black-panther
```

# Citing

If you use this for any kind of academic purpose, please cite as:

> Bruce Becker. (2018, April 17). brucellino/black-panther: Community Health  Compliance Profile for GitHub repos (Version v1.0.1). Zenodo. http://doi.org/10.5281/zenodo.1219644
