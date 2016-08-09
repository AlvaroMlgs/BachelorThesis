# Table of Contents
0. [Abstract](#abstract)
	- [Keywords](#keywords)
1. [Introduction](#introduction)
	- [Objectives](#objectives)
2. [A brief introduction to Ardupilot](#a-brief-introduction-to-ardupilot)
3. [Review of the State of the Art](#review-of-the-state-of-the-art)
4. [Problem statement](#problem-statement)
5. [Describing How You Solved the Problem or Answered the Question](#describing-how-you-solved-the-problem-or-answered-the-question)
6. [Conclusions](#conclusions)
7. [References](#references)
8. [Appendices](#appendices)


---------------------------------------------------------
---------------------------------------------------------


# UAV Obstacle Collision Avoidance System. 
#### Subsystem integration for safer autonomous flights

## Abstract
- Ardupilot (open source) used in many commercial and DIY UAVs
- Obstacle detection not yet implemented
- Objective: Create affordable product integrating Obstacle Alert and Collision Avoidance System
- Approach: Use front-facing ultrasonic rangefinders for distance-to-obstacle measurement

### Keywords
UAV, obstacle detection, collision avoidance, system integration, ultrasonic rangefinder, Ardupilot

## Introduction
> This is a general introduction to what the thesis is all about -- it is not just a description of the contents of each section. Briefly summarize the question (you will be stating the question in detail later), some of the reasons why it is a worthwhile question, and perhaps give an overview of your main results. This is a birds-eye view of the answers to the main questions answered in the thesis:

>  - What is this student's research question?
>  - Is it a good question? (has it been answered before? is it a useful question to work on?)
>  - Did the student convince me that the question was adequately answered?
>  - Has the student made an adequate contribution to knowledge?

- Limitations of unmanned w.r.t. manned aerial vehicles: Loss of situational awareness, visual and physical (inertial) cues, limited control inputs (up to 8-9 channels), ATM communications...
- Those limitations are considered by regulations >> Expose imposed operational limitations (ICAO, EASA, AESA): Line of Sight, < 400ft, no cities, no people...
- Initiate proactive approach to change legistlation by mitigating UAV limitations
	- Particularly, tackle the regulations that exist to reduce the posibility of accidents related to unintentional loss of separation between UAV and surroundings
	- Simplify pilot's tasks so that they can focus on the mission (avoiding dangerous situations at higher navigation/planning level rather than immediate low-level collision avoidance is more effective and efficient)
	- Develop inexpensive and easily integrable (modularity concept) subsystem that can be massively deployed to a wide range of vehicles: from hobby-grade to professional platforms
- Final goal: Make Ardupilot UAV's difficult to crash unintentionally >> Safer operation >> More permisive regulations >> Exploit UAV usage for civil applications (examples: urban inspections, monitoring, demographic studies, security...)


### Objectives

- Identify the requirements needed for the Obstacle Collision Avoidance System (OCAS) to correctly fulfill its purpose
- Define the functional architecture of the OCAS
- Define the interfaces (communication channels and protocols) to be used by the OCAS for its correct integration on the UAV
- Define the interaction channels and procedures between the UAV equiped with OCAS and Ardupilot and the operator
- Develop a first working prototype as proof of concept of the Obstacle Collision Avoidance System (both hardware and software) and integrate it on a real UAV

**Systems engineering process:** 

1. Requirements
 	- Capture
 	- Validation
2. Functional Analysis
 	- Functional architecture
 	- FFBD
 	- Timeline analysis
3. Design
	- System block diagram
 	- N^2 diagram (interfaces)


## A brief introduction to Ardupilot
> A brief section giving background information may be necessary, especially if your work spans two or more traditional fields. That means that your readers may not have any experience with some of the material needed to follow your thesis, so you need to give it to them. A different title than that given above is usually better; e.g., "A Brief Review of Frammis Algebra."

- Ardupilot as Flight controller software
	- Basic features (manual control)
	- Automatic mode (preprogrammed missions)
	- Ground Control Station (Ardupilot as part of a bigger system - UAS concept) - Communication protocol (MAVlink)

## Review of the State of the Art
> Here you review the state of the art relevant to your thesis. Again, a different title is probably appropriate; e.g., "State of the Art in Zylon Algorithms." The idea is to present (critical analysis comes a little bit later) the major ideas in the state of the art right up to, but not including, your own personal brilliant ideas.

> You organize this section by idea, and not by author or by publication.

- Technology Readiness Level
- Environment sensing
	- Radar	
	- Sonar
	- Lidar
	- Computer vision
	- **(This goes in the Solution to the Problem chapter)** Comparison: Use sonar because low-power, readily available, light, easy integration
- Collision avoidance
	- TCAS on commercial aircraft
	- Phantom 4
	- [eBumper](http://dronelife.com/2014/10/31/making-flying-easy-panoptes-e-bumper/)
- Real-time GNC
	- Vijay Kumar
	- Rafaello D'Andrea


## Problem Statement
> Engineering theses tend to refer to a "problem" to be solved where other disciplines talk in terms of a "question" to be answered. In either case, this section has three main parts:

> 1. A concise statement of the question that your thesis tackles 
> 2. Justification, by direct reference to State of the Art section, that your question is previously unanswered
> 3. discussion of why it is worthwhile to answer this question.

**Problem to be solved:** Is it possible to improve the operational safety of a wide range of UAVs by developing an intermediate functional layer that prevents physical collisions between the UAV and its surroundings?

**Explanation to problem statement**

*Operational safety:* A reliable collision avoidance system reduces the workload of the pilot so that higher-level tasks can be performed more safely and efficiently

*Wide range of UAVs:* All of them controlled by Ardupilot software

*Intermediate functional layer:* The proposed solution should work with existing UAVs, offered as an enhancement to the toolbox of functions already provided by the Ardupilot software

**Why is it worthwhile?**
OCAS allows more autonomous operation of the system: the pilot does not need to be focused on the immediate surroundings of the vehicle, allowing for an improved situational awareness leading to a better execution of the mission.


## Describing How You Solved the Problem or Answered the Question
> This part of the thesis is much more free-form. It may have one or several sections and subsections. But it all has only one purpose: to convince the examiners that you answered the question or solved the problem that you set for yourself in the Problem Statement section. So show what you did that is relevant to answering the question or solving the problem: if there were blind alleys and dead ends, do not include these, unless specifically relevant to the demonstration that you answered the thesis question.

## Conclusions
> You generally cover three things in the Conclusions section, and each of these usually merits a separate subsection:

> 1. Conclusions 
> 2. Summary of Contributions 
> 3. Future Research

> Conclusions are not a rambling summary of the thesis: they are short, concise statements of the inferences that you have made because of your work. It helps to organize these as short numbered paragraphs, ordered from most to least important. All conclusions should be directly related to the research question stated in the Problem Statement section. Examples:

> 1. The problem stated in Section 4 has been solved: as shown in Sections ? to ??, an algorithm capable of handling large-scale Zylon problems in reasonable time has been developed.
> 2. The principal mechanism needed in the improved Zylon algorithm is the Grooty mechanism.
> 3. Etc.

> The Summary of Contributions will be much sought and carefully read by the examiners. Here you list the contributions of new knowledge that your thesis makes. Of course, the thesis itself must substantiate any claims made here. There is often some overlap with the Conclusions, but that's okay. Concise numbered paragraphs are again best. Organize from most to least important. Examples:

> 1. Developed a much quicker algorithm for large-scale Zylon problems.
> 2. Demonstrated the first use of the Grooty mechanism for Zylon calculations.
> 3. Etc.

> The Future Research subsection is included so that researchers picking up this work in future have the benefit of the ideas that you generated while you were working on the project. Again, concise numbered paragraphs are usually best.

## References

> The list of references is closely tied to the review of the state of the art given in section 3. Most examiners scan your list of references looking for the important works in the field, so make sure they are listed and referred to in section 3. Truth be known, most examiners also look for their own publications if they are in the topic area of the thesis, so list these too. Besides, reading your examiner's papers usually gives you a clue as to the type of questions they are likely to ask.

> **All references given must be referred to in the main body of the thesis.** _Note the difference from a Bibliography,_ which may include works that are not directly referenced in the thesis. Organize the list of references either **alphabetically by author surname (preferred), or by order of citation in the thesis.

## Appendices

> What goes in the appendices? Any material which impedes the smooth development of your presentation, but which is important to justify the results of a thesis. Generally it is material that is of too nitty-gritty a level of detail for inclusion in the main body of the thesis, but which should be available for perusal by the examiners to convince them sufficiently. Examples include program listings, immense tables of data, lengthy mathematical proofs or derivations, etc.



<small> Quotes taken from: [http://www.sce.carleton.ca/faculty/chinneck/thesis.html] </small>
