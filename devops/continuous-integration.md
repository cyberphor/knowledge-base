# Continuous Integration
Continuous Integration (CI) is a quality control process. It uses a Version Control System (VCS) and automated pipeline to continuously commit, build, and test software before it is released as an artifact. It is the process of frequently integrating and testing code changes as they are developed.

## Benefits
**Detect Bugs Early**  
CI requires new builds to be immediately tested. This allows you to identify bugs early and prevent them from becoming bigger problems in the future. 

**Mitigate Integration Issues**  
CI requires developers to push small updates often. This makes it easier to resolve issues because there are less changes to deconflict and address. 

**Increase Release Velocity**  
CI requires software to be automatically built and tested after it is committed to a version control system. This allows you to deploy software and respond to feedback faster. 

**Improve Developer Productivity**  
The benefits already mentioned give developers more time to focus on writing software rather than implementing it. 

## CI Pipeline Components
A CI pipeline consists of the components described below. 

**Version Control System**  
A VCS is a repository and history archive for source code. Developers use a VCS to check out specific versions, make changes, and commit (i.e., save) their work. Examples of a VCS are Git, Mercurial, and Subversion. 

**Build System**  
A build system transforms human-readable source code into machine-executable instructions. It also documents the code and packages it into deployable units. Examples of a build system are Jenkins and Travis CI. 

**Test Suite**  
The test suite is a collection of unit, integration, and functional tests. 

**Notification System**  
The notification system sends build and/or test results to the developer. 

## Tools
See below for a list of common CI tools. 

**Jenkins**  
Open-source software with hundreds of plugins. Considered an alternative to CircleCI. 

**Travis CI**  
Used to build and test software. Integrates with GitHub. 

**GitHub Actions**  
Integrates with Github, making it faster to deploy software updates. Considered an alternative to TravisCI. 

**GitLab CI**  
Integrates with GitLab. It includes a VCS and the ability to track issues. 

**CircleCI**  
Cloud-based and offers customizable build, test, and deploy workflows. 

**Azure Pipelines**  
Included in the Microsoft Azure DevOps platform. Tailored to building and deploying software in the Azure ecosystem. 

## Process
The CI process is represented by the phases described below. 

**Code**  
During the Code phase, the developer writes code to implement a new feature or fix a bug. 

**Commit**  
During the Commit phase, the developer commits and pushes the change to a Version Control System (VCS) (i.e., Git). The VCS then notifies the CI server the software has been changed. 

**Build**  
During the Build phase, the CI server builds the software. 

**Test**  
During the Test phase, the CI server runs a series of tests against the software. These tests check for correctness (i.e., functionality, performance, and compatibility). 

**Report**  
During the Report phase, the CI server reports the build and test results to the developer. 

## Test Coverage and Methods
**Test Coverage**  
Test coverage is a metric used to describe how much of a codebase is tested (e.g., 90% of the lines are tested). 

**Style Testing** (dynamic)  
Style testing is used to evaluate the readability and security of source code. One technique for testing readability is comparing how compliant the code is with its programming language style. For example, if your source code was written in Python, the test suite would evaluate its compliance with Python Enhancement Proposal (PEP) 8. 

**Functional Testing** (dynamic)  
Functionality testing evaluates the behavior of your code. 
* Unit Tests: evaluate individual software components (e.g., functions)
* Integration Tests: evaluate multiple software components working together
* Regression Tests: evaluate if any component will break after changes have been made
* System Tests: evaluates deployed software 
* Acceptance Tests: evaluates deployed software for compliance with business requirements

## Best Practices
**Keep the Feedback Loop Fast**  
Use dedicated build servers, incremental builds, and parallel testing to reduce build times and keep the feedback loop fast. 

**Automate the Building and Testing Software**  
Ensure every commit triggers an automated build and test process to maintain a release-ready codebase. 

**Get Everyone to Commit to Daily**  
Getting everyone to commit daily to ensure they are in sync with the latest development of the project and mitigate risk early. 

**Make Sure the Latest Build is Accessible**  
Make sure the latest build is accessible to promote collaboration, and quick decision-making.

**Promote Transparency**  
Share information regarding contributors, the latest changes, and build/test results for accountability, empowerment, and celebration. 
