# Jenkins
#cloudadmin

[Jenkins](https://www.jenkins.io/doc/ "Jenkins Documentation")

Jenkins is an open source automation server. Allows for build, test, and deploy automationsCI/CD, continuous integration and continuous deployment

Jenkins creates automation for all kinds of different development

-   build
-   run test
-   deploy

## Controllers

is used to:

-   host the web server and jenkins website
-   schedule jobs
-   assign work to agents
-   build projects
-   should NOT be used to build heavy projects, and should be offloaded to an agent

## Agents

is used to:

-   perform jobs for a jenkins controller
-   can eb tagged with different tags so that controlller knows which job to send to which agent

## Components

### Freestyle Project

-   any general automation task

### Pipeline Projects

-   allows for multistage development
-   uses a jenkins file to define conf
-   groovy like syntax
-   [[pipline_project]]

### Multi-config

-   allows tests on multi OS and browsers

### Multi-branch Pipline

-   allows for work across multiple branches in a vcs repo