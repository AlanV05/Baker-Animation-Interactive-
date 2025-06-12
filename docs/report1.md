# Interim report

## Introduction

Our project revolves around creating engaging visual animations using Processing to bring Java code to life. Specifically, we're developing animations featuring a **subject: baker** moving in a kitchen and a **object: tomato** **action: swirling** at the centre of the screen. These animations will eventually merge into one to showcase both the baker and tomato in dynamic motion. Utilising GitHub and Git for collaborative development, our project serves as a practical demonstration of fundamental software engineering concepts while ensuring clarity in execution for ourselves and any interested stakeholders. Incorporating the agile development approach, our team emphasises iterative progress, frequent collaboration, and responsiveness to constantly evolving requirements. This iterative approach allows us to adapt to changes, incorporate feedback, and deliver value incrementally throughout the entirety of the project.

## User Stories and Requirements

### Tomato Animation
**User Story**

- **As a** user, **I want to** see a red tomato on the centre of the display which swirls clockwise for three seconds when clicked, **so that** I can interact with the animation.

**Acceptance Criteria:**

 - **Given** that the program displays a red tomato on the centre of the screen, **When** the user clicks anywhere on the red tomato, **Then** the tomato starts to swirl clockwise for three seconds then stops.

 **Requirements**
 - [ ] The program must allow users to use their mouse to click the red tomato 
 - [ ] The code must create a swirling effect on the red tomato when it is clicked by the user
 - [ ] When clicked, the red tomato should swirl clockwise for three seconds
 - [ ] The user should be allowed to repeat the animation multiple times
 - [ ] The tomato should stay at the centre of the display
 - [ ] The tomato must be red and include a green stem at the top
 - [ ] The background must be white

 ### Baker Animation

 **User Story**

- **As a** user, **I want to** see a baker in a kitchen that moves left or right when the corresponding keys are pressed, **so that** I can move the baker around the kitchen and I can interact with the animation.
**Acceptance Criteria:**

- **Given** that the program displays a baker in a kitchen, **When** the user presses either the left or right key, **Then** the baker moves in the direction pressed by the user.

**Requirements**
 - [ ] The program must display the baker on a kitchen
 - [ ] The character must be easily identified as a baker
 - [ ] The kitchen should be identifiable
 - [ ] The baker must move towards direction depending which key is pressed, right or left key
 - [ ] The baker must not move past the shelf when moving towards the right
 - [ ] The baker must not move past the wall when moving towards the left

## User Acceptance Tests

#### Tomato Animation

1. **Display Red Tomato**
  - *Test:* Open the program.
  - *Expected Result:* A red tomato with a green stem is displayed at the centre of the screen against a white background.

2. **Click Interaction**
  - *Test:* Click anywhere on the red tomato.
  - *Expected Result:* The tomato starts swirling clockwise.

3. **Swirling Animation Duration**
  - *Test:* Click on the tomato to initiate swirling animation.
  - *Expected Result:* The swirling animation lasts for three seconds.

4. **Repeated Animation**
  - *Test:* Click on the tomato to initiate swirling animation, then click again during or after animation completion.
  - *Expected Result:* The swirling animation restarts upon each click, allowing for multiple repetitions.

5. **Tomato Position**
  - *Test:* Leave the animation idle for a period.
  - *Expected Result:* The red tomato remains stationary at the centre of the display.

#### Baker Animation

1. **Display Baker in Kitchen**
  - *Test:* Open the program.
  - *Expected Result:* A baker character is displayed in a kitchen environment.

2. **Baker Identification**
  - *Test:* Observe the baker character.
  - *Expected Result:* The character is easily recognizable as a baker.


3. **Kitchen Environment Identification**
  - *Test:* Observe the animation.
  - *Expected Result:* The environment is identifiable as a kitchen.

4. **Baker Movement - Left Key**
  - *Test:* Press the left arrow key.
  - *Expected Result:* The baker moves to the left within the kitchen environment, stopping at the defined boundary (i.e the invisible collision container marking the background barrier).

5. **Baker Movement - Right Key**
  - *Test:* Press the right arrow key.
  - *Expected Result:* The baker moves to the right within the kitchen environment, stopping at the defined boundary (i.e the invisible collision container marking the background barrier).

## Coding Guidelines

### To ensure code readability and maintainability, we will adhere to the following guidelines:

 - Modularisation:
   * Break down complex tasks into smaller, modular functions or classes, each responsible for a specific task or functionality.

 - Documentation:

   * Provide clear and concise documentation for all functions, classes, and modules.
   * Document function parameters, return values, and their types.
   * Use docstrings to describe the purpose, usage, and behaviour of functions and classes.
   * Use clear and concise commenting throughout the code for maintenance and organisation purposes.


 - Naming Conventions:
   * Use descriptive and meaningful names for variables, functions, classes, and modules.
   * Follow a consistent naming convention (e.g., camelCase, snake_case, PascalCase) throughout the project.
   * Avoid single-letter variable names except for loop counters or well-known conventions like 'i', 'j', 'k' for iterators.

 - Correct Code Formatting:
   * Use consistent indentation (e.g., tabs or spaces) for code blocks. Choose one and stick with it throughout the project.
   * Limit line length to improve readability (e.g., 80-120 characters per line).
   * Utilise whitespace judiciously to enhance code clarity and readability.

 - Error Handling:
   * Implement robust error handling mechanisms, including try-except blocks where appropriate.
   * Use meaningful error messages to aid in debugging and troubleshooting.

 - Testing and Implementation:

   * Write unit tests for critical functionalities to ensure code correctness and reliability.
   * Perform regular code reviews to maintain code quality and consistency.
   * Utilise automated listing and formatting tools to enforce coding standards.


 - Version Control:
   * Use a version control system (e.g., Git) to track changes, collaborate with team members, and manage project history.
   * Follow branching and merging strategies conducive to the project's development workflow.

 - Maintainability:
   * Write code with the assumption that it will be maintained by others in the future.
   * Avoid overly clever or cryptic code constructs that sacrifice clarity for brevity.
   * Favour readability and maintainability over premature optimization or micro-optimisations.

 ## Project Management
- List the tasks and issues that are currently on your project board, and their status. Include who has been assigned to do the job, and who will be responsible for reviewing the tasks before it is moved to the `Done` column.
- Explain which methods you will use for code review. Note, that reviewing a task, and reviewing code, are two separate activities.
- Explain the overall progress with respect to the mid-semester milestone.

#Tasks
1. **Introduction**
  - Assignee: Tserriednicht, karo-bokani (Ryan, Karo)
  - Status = *In Review*
  - The reviewee is responsible to make sure that the **introduction**  provides a clear overview about  what the users are accepted to see when running the program. There must also be a brief explanation about what each program does.

2. **User Stories & Requirements**
  - Assignee: AlanV05 (Alan)
  - Status = *In Review*
  - As a reviewee, they are responsible to make sure that the **user story(s)** clear mention what the user is supposed to see and do with the program. They must also make sure the **requirements** give a clear understanding to the devs of what the user hopes to see.

3. **Project Management**
  - Assignee: AlanV05 (Alan)
  - Status = *In Review*
  - The reviewee must ensure that all the tasks in the project board is mentioned under this title and

4. **User Acceptance Testing**
  - Assignee: karo-bokani (Karo)
  - Status = *In Review*
  - As a reviewee, they are responsible to make sure that the **user acceptance test** gives a clear guideline on what to expect when
    running the code and if the tests help achieve the requirements and link to the user story.

5. **Coding Guidelines**
  - Assignee: karo-bokani (Karo)
  - Status = *In Review*
  - The reviewee must ensure that these guidelines help devs to clearly understand them, hence allowing them to create quality code and 
    consistency throughout the production of the code.

6. **Design Baker Sketch/Animation**
  - Assignee: austinblencowe1 (Austin)
  - Status = *In Review*
  - As a reviewee, they must ensure that the baker must identify as a baker and act as it's supposed to when checking the requirements for the program.
    
7. **Design Tomato Sketch/Animation**
  - Assignee: AlanV05 (Alan)
  - Status = *In Review*
  - Similar to the review process of the Baker Sketch/ Animation, the reviewee must ensure that the code displays a sketch that    
    identifiable as a tomato and meets the requirements mentioned. If the reviewee finds issues with the code at the next meeting the

As we've reached the mid-semester milestone, we're pleased to report that we've made significant progress through the completion of essential animations as planned. Throughout this period, we've effectively allocated tasks based on each individual's strengths and weaknesses, ensuring a balanced workload distribution amongst our team.

A notable aspect of our collaboration is our capacity for individual task assignment and completion. Each team member has taken the initiative of ownership of tasks, completing them, and seeking group feedback. This feedback loop has been invaluable in our progress, allowing us to discuss and clarify ideas efficiently. This iterative process has contributed to the overall success and cohesion of our project so far.
