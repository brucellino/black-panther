# Documentation

This is an [inspec profile](https://www.inspec.io/docs/reference/profiles/) for
testing compliance of GitHub repositories against a set "Community Health"
guidelines.

##  Background
There are a few assumptions here that we should make explicit - 

  - **Compliance as Code**
  - **Community Guidelines**
  - **Community Health** (as defined by GitHub, and others)

### Compliance as Code

Compliance to standards or guidelines is usually written down in a set of documents
or consumption by humans.
Humans then have to read those documents and periodically evaluate whether their
particular setup is compliant.
We believe there are obvious drawbacks to this in a high-tech automated environment.

The *compliance as code* pattern seeks to formulate the standard or guideline into
machine-readable documents, so that compliance can be _asserted_.
This needs to be done in a _human-readable_ way however, else it becomes unwieldy to
maintain.
To this end, we use [Inspec](https://inspec.io), which provides a means to address both the _human_ readable and _machine_ readable goals.

### Community Guidelines

If you're using this profile, it's safe to assume that you want to develop software
(or things, like documents, policies, or infrastructure) in a collaborative way.
Just having an Open Source repository does not imply that it is conducive to
collaborations, or indeed receptive to contributions from members of the project
itself or indeed members of the wider community.
Building welcoming communities is hard, but when it's done, the long-term
sustainability of the project or venture can be better assured.
Although there is no magic wand to achieve this, a lot of work has been done
in order to identify [common traits that successful online communities have](opensource.guide/https://opensource.guide/building-community/) and
[useful metrics for measuring them](https://chaoss.community/).

For deeper discussion, see
  - opensource.guide
  - chaoss.community

For our purposes, we will simply follow the [GitHub community health metrics](https://developer.github.com/v3/repos/community/), as is evidenced by the name of
this profile : in order to access that part of the v3API, a special application type
is needed : `application/vnd.github.black-panther-preview+json`

## What  do we test for

This profile is meant as a _reminder_ to create some documents to guide community contributions.
We only test for the _existence_ of these documents, not the content itself.

The tests are written as a series of assertions, using the Inspec DSL and test the existence of:

- a README
- a file describing how to contribute
- Templates for Pull Requests and Issues
- License statement

These are used by the GitHub Community Health profile to build up a quantitative
estimate of how welcoming the repository is to outside contributors.
This profile aims simply to reproduce these tests and report to repo maintainers.
It should correspond exactly to the "community insights" part of the repository on
the GitHub web interface.

## What this profile does not test for

Supporting documentation is one of many metrics one can measure to determine the
health of an open-source community.
One may imagine an extensive series of tests, following the work cited above in [community guidelines](#community-guidelines).
We could check things like:

 - is continuous integration done ?
 - is there a protected branch for which code review is required prior to merging ?
 - is there a team of code reviewers?
 - is there sufficient activity in this repository to consider it "alive" ?

and many more.
We do not extend _this_ profile past what is done by the [Community Profile](https://developer.github.com/v3/repos/community/) as defined by GitHub for the
simple reason that there are other API endpoints to be used for extracting that information.
