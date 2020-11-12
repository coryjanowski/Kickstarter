##Does it matter if a startup company was backed up for the company to succeed
## Load the package
library("dplyr")
library("tidyr")
#keep the only collumns i want ks 201612

kickStart201612<- ks.projects.201612 %>% select(name,main_category,goal,launched,pledged,
                                                state,backers,usd.pledged)

## keep only certain collums from 201612
kickstart201612<- ks.projects.201801 %>% select(name, main_category,goal,launched ,pledged,
                                                state, backers,usd.pledged)


##LOK AT THE  DATA TO SEE IF IT IS NORMALIZE
library("ggplot2")
##Bar Chaaart
ggplot(data=kickstart201612, aes(x=main_category))+ geom_bar()

ggplot(data=kickstart201801, aes(x=launched))+ geom_bar()

ggplot(data=kickstart201801, aes(x=state))+ geom_bar()
## state is kinda normalized
ggplot(data=kickstart201801, aes(x=goal))+ geom_bar()
ggplot(data=kickstart201801, aes(x=backers))+ geom_bar()

ggplot(data=kickstart201801, aes(x=pledged))+ geom_bar()
#@# Scatter plots of the contious data and how they relate
# How much was pledge vs how much really pledged
ggplot(data=kickstart201801, aes(x=pledged, y= usd.pledged)) + geom_point()
# how much was pledged  usd_pleadge-real
ggplot(data=kickstart201801, aes(x=pledged, y= usd_pledged_real)) + geom_point()

##how much was pledged verse the real goal
ggplot(data=kickstart201801, aes(x=pledged, y= usd_goal_real)) + geom_point()

##analyse the goal verses the actual pledged goal
ggplot(data=kickstart201801, aes(x=goal, y= usd_goal_real)) + geom_point()
ggplot(data=kickstart201801, aes(x=backers, y= state)) + geom_point()
## there were alot of successes the failers
## what was category goal
ggplot(data=kickstart201801, aes(x=goal, y= main_category)) + geom_point()
# what was the real goal per category
ggplot(data=kickstart201801, aes(x=usd_goal_real, y= main_category)) + geom_point()
## what is the actual real pledge pr category
ggplot(data=kickstart201801, aes(x=usd_pledged_real, y= main_category)) + geom_point()

## what is the state verse backers
ggplot(data=kickstart201801, aes(x=backers, y= state)) + geom_point()


##looking at trends with line chart
ggplot(data=kickstart201801, aes(x= launched, y=goal)) + geom_line()