

# Help!
Member: Zhuze Cai, Adam Lei, Jorge Salas, Mark Hughes
## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
Help! is a volunteer driven app used to assist people
in emergency situations, the app will use a GPS system to let
people alert others in their immediate area along with a short 
Message if applicable. 
[Description of your app]

## 4-23 Update
Next week: location and GPS, ste up the database for users, and make the UI better
<img src='https://github.com/NDNU-IOS-2020-Group2/Help/blob/master/4-23.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />#


### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:**
Health, Location, Services, Security
- **Mobile:**
GPS, Moves along with user, Provides accurate location
- **Story:**
-Can provide medical care from registered medical personnel 
that may be nearby on or off duty
-Can provide immediate assistance to individuals in the area who may
be able assist before medical personnel arrive(if 911 call was placed)
-Can place a 911 call(if chosen)
-Can alert surrounding individuals in minor altercations not worthy of
Calling emergency services
-Can provide in person emotional and/or physical assistance to a mentally
Ill individual in times of crisis(Autism, Schizophrenia, Bipolar, Panic attack)
-Less intimidating than 911
- **Market:**
-Healthcare workers
-Risk Prone
-individuals with Autism or Mental health issues
Those with family members with issues who know the correct way to respond
- **Habit:**
- **Scope:**
Health prone individuals 
Health care workers
Kind good meaning people 
People with knowledge or specific cases
Will contain Registration/Database of users and attributes to help find who can help
in certain scenarios and prevent abuse of system

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
Sherrys going took a fall and just needs somebody who can get her back on her feet Sherry uses the app and alerts Joe who is nearby and helps her get back up.

Andrew has Autism and has break downs if he uses the app he can alert someone nearby(or one of his family members with the app on their phones) to assist him

Melanie has panic attacks, she can alert people nearby who may be able to calm her down.

Ally is a nurse and has the app on her phone in case someone nearby has a medical emergency


**Optional Nice-to-have Stories**

Ashton is seriously bleeding and needs to alert 911 and also alert someone nearby to help him while they arrive
	

**Issues created from user stores**

Example 1:

Andrew, who has autism opens the app while upstars in his home as he is having a breakdown and needs assistance, the app is able to log on and recognize that it is andrew logging on, after opening the app Andrew presses the alert button and can see that his sister, who the app recognizes is trusted by andrew is closeby. Andrew's sisters phone alerts her of andrews distress and she is able to quickly go downstairs to assit her brother.

Issues:

-App must recognize andrew when he opens the app

-Andrews sister must be recognized by the app as being trusted by andrew

-Andrew is able to press the alert button after opening the app and is able to choose to alert his sister with the app recognizing her locaton

-Andrews sister must get the alert on her phone quickly and with ease to make sure andrew is helped in a tmely matter

Example 2:

Ally is a nurse and has the app on her phone in case someone nearby has a medical emergency.

Issues:

The app can recognize Ally as a medical professional

The app can alert Ally above other members of the app who may not be able to assist as well as a trained proffessional or in cases where only a proffessional could assist
### 2. Screen Archetypes

Main Screen has alert button to alert others nearby and add optional text
-

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [fill out your first tab]
* [fill out your second tab]
* [fill out your third tab]

**Flow Navigation** (Screen to Screen)

* [list first screen here]
   * [list screen navigation here]
   * ...
* [list second screen here]
   * [list screen navigation here]
   * ...

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://github.com/NDNU-IOS-2020-Group2/Help/blob/master/Wireframes.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
### Models
#### User
| Property        | Type       | Description                         |
| --------------- | ---------- | ----------------------------------- |
| id              | String     | unique ID for user (default field)  |
| firstName       | String     | user's first name                   |
| lastName        | String     | user's last name                    |
| email           | String     | user's email address                |
| phoneNumber     | String     | user's primary phone number         |
| address         | String     | user's address                      |
| city            | String     | user's city                         |
| image           | File       | image for user profile              |
| preconditions   | Array      | list of pre-existing med conditions |
| emergencyContact| Pointer    | contact person                      |
| preferredComm   | String     | preferred method of communication   |
| createdAt       | DateTime   | date user profile was created       |

#### MedicalProfessional
| Property        | Type       | Description                         |
| --------------- | ---------- | ----------------------------------- |
| id              | String     | unique ID for user (default field)  |
| firstName       | String     | professional's first name           |
| lastName        | String     | professional's last name            |
| title           | String     | professional title (Dr, nurse, etc) |
| workplace       | String     | professional workplace              |
| email           | String     | professional's email address        |
| phoneNumber     | String     | professional's primary phone number |
| address         | String     | professional's address              |
| city            | String     | professional's city                 |
| image           | File       | image for profile                   |
| certifications  | Array      | list of medical certifications      |
| createdAt       | DateTime   | date user profile was created       |

#### EmergencyContact
| Property        | Type       | Description                          |
| --------------- | ---------- | ------------------------------------ |
| id              | String     | unique ID for contact (default field)|
| user            | Pointer    | pointer to user                      |
| firstName       | String     | contact's last name                  |
| lastName        | String     | contact's last name                  |
| email           | String     | contact's email address              |
| phoneNumber     | String     | contact's primary phone number       |
| address         | String     | contact's address                    |

#### Help
| Property        | Type       | Description                          |
| --------------- | ---------- | ------------------------------------ |
| id              | String     | unique ID for help (default field)   |
| user            | Pointer    | pointer to user                      |
| createdAt       | DateTime   | date the help request was created    |
| location        | String     | exact location of user when requested|

### Networking
- Home Screen
   - (Read/GET) Query user basic info
   - (Create/POST) Create a new help instance
- Create Help
   - (Read/GET) Query all medical professionals who are within a one-mile radius
   - (Create/POST) Create a new help object
- User Profile Screen
   - (Read/GET) Query logged in user object
   - (Update/PUT) Update user profile image
- Medical Professional Profile Screen
   - (Read/GET) Query object medical professional selected
