[![Build Status](https://travis-ci.org/brucellino/black-panther.svg?branch=master)](https://travis-ci.org/brucellino/black-panther) [![Dependency Status](https://gemnasium.com/badges/github.com/brucellino/black-panther.svg)](https://gemnasium.com/github.com/brucellino/black-panther)
# Black Panther ✊🏿 Profile

An [InSpec profile](https://www.chef.io/inspec/) for testing the community health of GitHub repositories.
It uses the [GitHub v3 API](https://developer.github.com/v3/)

## Community Health

[GitHub](htps://github.com) measures community health in terms of the indicators of community-friendly content of a repository, building on the [Open Source Guide](https://opensource.guide/building-community/).
A strong community can be enabled by clear guides and clear supporting documentation explaining how to contribute, what recognition is given for contributions and ensuring quality in the process of maintaining the repository.

This is done by consuming the repository's [community](https://developer.github.com/v3/repos/community/) object via the GitHub API, and detecting deviations from expected profiles.

## Using

In order to use this profile, you need two environment variables to be set: 

  - `GITHUB_REPO`: GitHub repository you want to test _e.g._ `EGI-Foundation/ansible-style-guide`
  - [Personal API Token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)