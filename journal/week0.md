# Week 0 — Billing and Architecture

## Homework Hard Assignments

1. Set a billing alarm


* [ ] Set a Billing alarm [Precorded]
2. Set a AWS Budget 

![budgets](./img/00.png)

    ```csv
    Budget Type,Budget Name,Budgeted Cost,Current Cost,Forecasted Cost,Unit,Filters Applied,Budget Period,Start Date,End Date,Current vs Budgeted Costs (Absolute Variance),Forecasted vs Budgeted Costs (Absolute Variance),Current vs Budgeted Costs (% Variance),Forecasted vs Budgeted Costs (% Variance)
    Cost,My Monthly Cost Budget,30.0,0.0,"'-",USD,none,Monthly,02/01/23,06/15/87,-30,0,0,0
    ```

    ```csv
    Budget Type,Budget Name,Budgeted Cost,Current Cost,Forecasted Cost,Unit,Filters Applied,Budget Period,Start Date,End Date,Current vs Budgeted Costs (Absolute Variance),Forecasted vs Budgeted Costs (Absolute Variance),Current vs Budgeted Costs (% Variance),Forecasted vs Budgeted Costs (% Variance)
    Cost,My Monthly Cost Budget,30.0,0.0,"'-",USD,none,Monthly,02/01/23,06/15/87,-30,0,0,0
    Cost,My Zero-Spend Budget,1.0,0.0,"'-",USD,none,Monthly,02/01/23,06/15/87,-1,0,0,0
    ```


3. Generating AWS Credentials 

    ![IAM.user](./img/01.png)


4. Using CloudShell 

    ![AWS.Cloudshell](./img/02.png)

    The `aws cli` was installed into the gitpod environment. See the `.gitpod.yml`

    ![gitpod.cli](./img/04.png)

    To add configuration to the [gitpod environments](https://www.gitpod.io/docs/configure/projects/environment-variables) (persistent throught sessions):

    ```bash
    # setting the persistent gitpod environment values
    gp env AWS_ACCESS_KEY_ID="key_id"
    gp env AWS_SECRET_ACCESS_KEY="secret_access_key"
    gp env AWS_DEFAULT_REGION="eu-central-1"
    # importing them to the local session 
    eval $(gp env -e)
    # listing current bash env
    env | grep AWS
    aws sts get-caller-identity
    ```

    This is a one time action. 

    **NOTE:** This might impose security risk, as the CLI keys are not expirable by default. Needs further investigation on best practice for expiration. 

5. Conceptual Architecture Diagram or your Napkins [Live-Stream]
        
    ![napkin.design](./img/05.png)
    *Napkin Design*

        * architecture diagram - just recreate [this](https://lucid.app/lucidchart/6f80cd2d-7d18-4731-aadc-bdda9773c092/edit?invitationId=inv_c648fee2-f691-443d-8602-7e959b41a18d&page=R01soSDRiqq8#)

## Homework Stretch Assignments

1. Destroy your root account credentials, Set MFA, IAM role

    *Completed in hard assignments already.*

 Use EventBridge to hookup Health Dashboard to SNS and send notification when there is a service health issue.
 Review all the questions of each pillars in the Well Architected Tool (No specialized lens)
 Create an architectural diagram (to the best of your ability) the CI/CD logical pipeline in Lucid Charts
 Research the technical and service limits of specific services and how they could impact the technical path for technical flexibility.
 Open a support ticket and request a service limit

## Additional configuration

1. Since I have made a decision to duplicate the Gitpod env within my local state, I had to configure the `aws cli` locally. All instrusctions, including completion are within the [aws docs](https://aws.amazon.com/cli/)

![aws.cli](./img/03.png)