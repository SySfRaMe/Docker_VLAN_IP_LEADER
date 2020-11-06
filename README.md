# Docker_VLAN_IP_LEADER
#Hello and welcome
This is my controlled enviorriment for developing and fix ip address for my docker cluster
Now first the problem:
Please see <a href='fig1.png'>fig1.png</a>
Fix1 shows a setup that is vulnerable if the first node (x.x.10.10) is lost/braks down etc.
I would like to have 1 ip address when talking to my swarm. I know when using a overlay network i am able to ”just” browse to x.x.10.11 or x.x.10.12 and it would still work but this is not a wanted behavior because the ip is hardcoded into other services outside the swarm and therefore not dynamic changed. On of many examples is the Route pri DNS as show inf <a href='fig1.png'>fig1.png</a>.

Idea 1:
Creating a script to run on each host to identify if it is currently the leader of the swarm. then based on this information activate a fixed virtual ip address on that host.
Secondly make sure that all incomming trafix to that virtual ip is redirected to the localhost or the ip attached to that host.
The redirect should be port transparent.
when all is working then i would like the whole thing wrapped around an container and shipped global to all the notes ( I know it is not required but i like to make as much as container driven as possible for further maintanance.)
see <a href='fig2.png'>fig2.png</a>.
Idea 2:
to be invistegated: can MacVlan solve this issue more simple



Thank you for your time
Feel free to suggest solutions or point me in the right direction of my goal.
