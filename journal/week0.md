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

* [ ] Conceptual Architecture Diagram or your Napkins [Live-Stream]
        * napkin design
        * architecture diagram - just recreate this

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