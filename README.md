### Task 1: Improve Code
Refactor the Animal class as needed


### Task 2: Lightning Web Component
Create two components:
1. The first component should display a list of all accounts in the org. The account names should be clickable.
1. The second component should display a list of all contacts related to any account the user clicks. Anytime the user clicks an account in the first component, the second component should refresh.


### Task 3: Rollup Trigger

StandUp makes and sells standing desks to businesses all around the world. Michael Hall, the Founder/CEO and a long-time advocate of environmentally sustainable business practices, decided from the beginning that half of the desks they sell will come from recycled wood. As a result, the company invests a lot in marketing the benefits of these desks in order to meet its 50% goal.

To better understand the impact of this practice on sales, the executive team wants to see account-level sales summary by wood type. There is an Opportunity field called Wood Type which has a value of "Standard" and "Recycled" to represent the two types of wood the company uses to manufacture desks. Initially, the Salesforce Admin attempted to create two roll-up summary fields on the Account that would summarize sales by wood type. However, the company has reached the total number of roll-up summary fields allowed on the Account object so that was not an option. After exhausting all point-and-click options available for delivering this requirement, the Admin turns to you, the Salesforce Developer, to create a trigger that would meet this need. They give you the following acceptance criteria:

1. Sales should be summarized on two Account fields:
    - Total Sales (Standard Wood)
    - Total Sales (Recycled Wood)
1. The summaries should be calculated in real-time.
1. StandUp is an enterprise with large data volumes in its Salesforce org so the trigger should be as efficient as possible.

#### Important Notes
- The goal of this exercise is to understand how you think and to gauge your development skills. The approach you take is more important than the implementation specifics.
- Code readability and maintainability are very important; do not ignore them.
- Please write as if your code will be deployed to the production instance of a client with a very complex implementation and large data volumes.
- Please make the changes in the `sfdx-project` folder and publish content of the folder to a public repo on GitHub/GitLab and send a link.
