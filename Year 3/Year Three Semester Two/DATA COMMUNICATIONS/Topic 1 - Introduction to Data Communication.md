 Lecture 1: Internetworking

Why do we need networks and networking in general?

  

Consider the following basic LAN that’s connected using a hub, which is basically just an antiquated device that connects wires together. Keep in mind that a simple network like this would be considered one **collision domain** and one broadcast domain. No worries if you have no idea what I mean by that because coming up soon, I’m going to talk about collision and

broadcast domains enough to make you dream about them!

  
 
Figure 1.1

with this scenario: Bob wants to send Sally a file, and to complete that goal in this kind of network, he’ll simply broadcast that he’s looking for her, which is basically just shouting out over

the network. Think of it like this: Bob walks out of his house and yells down a street called Chaos Court in order to contact Sally. This might work if Bob and Sally were the only ones living there, but not so much if it’s crammed with homes and all the others living there are always hollering up and down the street to their neighbors just like Bob. Nope, Chaos Court would absolutely live up to its name, with all those residents going off whenever they felt like it—and believe it or not, our networks actually still work this way to a degree!

  

So, given a choice, would you stay in Chaos court?

Court, or would you pull up stakes and move on over to a nice new modern community called

Broadway Lanes, which offers plenty of amenities and room for your home plus future additions

all on nice, wide streets that can easily handle all present and future traffic? If you chose the

latter, good choice… so did Sally, and she now lives a much quieter life, getting letters (packets)

from Bob instead of a headache!

  

My goal of showing you how to create efficient networks and segment them correctly in order to minimize all the chaotic yelling and screaming. It’s just inevitable that you’ll have to break up a large network into a bunch of smaller ones at some point to match a network’s equally inevitable growth, and as that expansion occurs, user response time simultaneously dwindles to a frustrating crawl. But if you master the vital technology and skills I have in store for you in this series, you’ll be well equipped to rescue your network and its users by creating an efficient new network neighborhood to give them key amenities like the bandwidth they need to meet their evolving demands.

  

And this is no joke; most of us think of growth as good—and it can be—but as many of us

experience daily when commuting to work, school, etc., it can also mean your LAN’s traffic

congestion can reach critical mass and grind to a complete halt! Again, the solution to this

problem begins with breaking up a massive network into a number of smaller ones—something

called _network segmentation_. This concept is a lot like planning a new community or

modernizing an existing one. More streets are added, complete with new intersections and traffic

signals, plus post offices are built with official maps documenting all those street names and

directions on how to get to each. You’ll need to effect new laws to keep order to it all and provide

a police station to protect this nice new neighborhood as well. In a networking neighborhood

environment, all of this is carried out using devices like _routers, switches_, and _bridges_.

  

So let’s take a look at our new neighborhood now, because the word has gotten out; many more

hosts have moved into it, so it’s time to upgrade that new high-capacity infrastructure that we

promised to handle the increase in population. Figure 1.2 shows a network that’s been segmented

with a switch, making each network segment that connects to the switch its own separate collision

domain. Doing this results in a lot less yelling!

  

![](file:///tmp/lu39596n6x.tmp/lu39596nqv_tmp_fc1ced73.gif)

  

Figure 1.2

  

A switch can break up collision domains. Each on every port in a switch creates its own collision domain.

This is a great start, but I really want you to make note of the fact that this network is still one,

single broadcast domain, meaning that we’ve really only decreased our screaming and yelling,

not eliminated it. For example, if there’s some sort of vital announcement that everyone in our

neighborhood needs to hear about, it will definitely still get loud! You can see that the hub used in

Figure 1.2 just extended the one collision domain from the switch port. The result is that John

received the data from Bob but, happily, Sally did not. This is good because Bob intended to talk

with John directly, and if he had needed to send a broadcast instead, everyone, including Sally,

would have received it, possibly causing unnecessary congestion.

  

Here’s a list of some of the things that commonly cause LAN traffic congestion:

- Too many hosts in a collision or broadcast domain
    
- Broadcast storms
    
- Too much multicast traffic
    
- Low bandwidth
    
- Adding hubs for connectivity to the network
    
- A bunch of ARP broadcasts
    

  

Take another look at Figure 1.2 and make sure you see that I extended the main hub from Figure

1.1 to a switch in Figure 1.2. I did that because hubs don’t segment a network; they just connect

network segments. Basically, it’s an inexpensive way to connect a couple of PCs, and again, that’s

great for home use and troubleshooting, but that’s about it!

  

As our planned community starts to grow, we’ll need to add more streets with traffic control, and

even some basic security. We’ll achieve this by adding routers because these convenient devices

are used to connect networks and route packets of data from one network to another. So never forget that by default, routers are basically employed to efficiently break up a _broadcast domain_—the set of all devices on a network segment, which are allowed to “hear” all broadcasts sent out on that specific segment.

  

Figure 1.3 depicts a router in our growing network, creating an internetwork and breaking up

broadcast domains.

  

![](file:///tmp/lu39596n6x.tmp/lu39596nqv_tmp_6a73c37e.gif)

**FIGURE 1.3** Routers create an internetwork.

  

The network in Figure 1.3 is actually a pretty cool little network. Each host is connected to its

own collision domain because of the switch, and the router has created two broadcast domains.

So now our Sally is happily living in peace in a completely different neighborhood, no longer

subjected to Bob’s incessant shouting! If Bob wants to talk with Sally, he has to send a packet with

a destination address using her IP address—he cannot broadcast for her!

  

But there’s more… routers provide connections to _wide area network (WAN)_ services as well via

a serial interface for WAN connections—specifically, a V.35 physical interface on a Cisco router.

  

Let me make sure you understand why breaking up a broadcast domain is so important. When a

host or server sends a network broadcast, every device on the network must read and process

that broadcast—unless you have a router. When the router’s interface receives this broadcast, it

can respond by basically saying, “Thanks, but no thanks,” and discard the broadcast without

forwarding it on to other networks. Even though routers are known for breaking up broadcast

domains by default, it’s important to remember that they break up collision domains as well.

  

There are two advantages to using routers in your network:

- They don’t forward broadcasts by default.
    
- They can filter the network based on layer 3 (Network layer) information such as an IP address.
    

  

Here are four ways a router functions in your network:

- Packet switching
    
- Packet filtering
    
- Internetwork communication
    
- Path selection – using routing tables
    

  

I’ll tell you all about the various layers later in this chapter, but for now, it’s helpful to think of

routers as layer 3 switches. Unlike plain-vanilla layer 2 switches, which forward or filter frames,

routers (layer 3 switches) use logical addressing and provide an important capacity called _packet_

_switching_. Routers can also provide packet filtering via access lists, and when routers connect

two or more networks together and use logical addressing (IP or IPv6), you then have an

_internetwork_. Finally, routers use a routing table, which is essentially a map of the internetwork,

to make best path selections for getting data to its proper destination and properly forward

packets to remote networks.

  

Conversely, we don’t use layer 2 switches to create internetworks because they don’t break up

broadcast domains by default. Instead, they’re employed to add functionality to a network LAN.

The main purpose of these switches is to make a LAN work better—to optimize its performance—

providing more bandwidth for the LAN’s users. Also, these switches don’t forward packets to

other networks like routers do. Instead, they only “switch” frames from one port to another

within the switched network. And don’t worry, even though you’re probably thinking, “Wait—

what are frames and packets?” I promise to completely fill you in later in this chapter. For now,

think of a packet as a package containing data.

  

Okay, so by default, switches break up collision domains, but what are these things? _Collision_

_domain_ is an Ethernet term used to describe a network scenario in which one device sends a

packet out on a network segment and every other device on that same segment is forced to pay

attention no matter what. This isn’t very efficient because if a different device tries to transmit at

the same time, a collision will occur, requiring both devices to retransmit, one at a time—not

good! This happens a lot in a hub environment, where each host segment connects to a hub that

represents only one collision domain and a single broadcast domain. By contrast, each and every

port on a switch represents its own collision domain, allowing network traffic to flow much more

smoothly.

  

IMPORTANT NOTE:

- Switches create separate collision domains within a single broadcast domain.
    
- Routers provide a separate broadcast domain for each interface. Don’t let this ever confuse you!
    

  

The term _bridging_ was introduced before routers and switches were implemented, so it’s pretty

common to hear people referring to switches as bridges. That’s because bridges and switches

basically do the same thing—break up collision domains on a LAN. Note to self that you cannot

buy a physical bridge these days, only LAN switches, which use bridging technologies. This does

not mean that you won’t still hear Cisco and others refer to LAN switches as multiport bridges

now and then.

  

But does it mean that a switch is just a multiple-port bridge with more brainpower? Well, pretty

much, only there are still some key differences. Switches do provide a bridging function, but they

do that with greatly enhanced management ability and features. Plus, most bridges had only 2 or

4 ports, which is severely limiting. Of course, it was possible to get your hands on a bridge with

up to 16 ports, but that’s nothing compared to the hundreds of ports available on some switches!

  

IMPORTANT NOTE:

You would use a bridge in a network to reduce collisions within broadcast

domains and to increase the number of collision domains in your network. Doing this

provides more bandwidth for users. And never forget that using hubs in your Ethernet

network can contribute to congestion. As always, plan your network design carefully!

  

Figure 1.4 shows how a network would look with all these internetwork devices in place.

Remember, a router doesn’t just break up broadcast domains for every LAN interface, it breaks

up collision domains too.

  

![](file:///tmp/lu39596n6x.tmp/lu39596nqv_tmp_422e93a.gif)

  

**FIGURE 1.4** Internetworking devices

Looking at Figure 1.4, did you notice that the router has the center stage position and connects

each physical network together?

  

See that bridge up at the top of our internetwork shown in Figure 1.4? It’s there to connect the

hubs to a router. The bridge breaks up collision domains, but all the hosts connected to both

hubs are still crammed into the same broadcast domain. That bridge also created only three

collision domains, one for each port, which means that each device connected to a hub is in the

same collision domain as every other device connected to that same hub. This is really lame and

to be avoided if possible, but it’s still better than having one collision domain for all hosts! So

don’t do this at home; it’s a great museum piece and a wonderful example of what not to do, but

this inefficient design would be terrible for use in today’s networks! It does show us how far we’ve

come though, and again, the foundational concepts it illustrates are really important for you to

get.

  

And I want you to notice something else: The three interconnected hubs at the bottom of the

figure also connect to the router. This setup creates one collision domain and one broadcast

domain and makes that bridged network, with its two collision domains, look majorly better by

contrast!

  

IMPORTANT NOTE:

Don’t misunderstand… bridges/switches are used to segment networks, but they

will not isolate broadcast or multicast packets.

  

  

  

The best network connected to the router is the LAN switched network on the left (Figure 1.4). Why?

Because each port on that switch breaks up collision domains. But it’s not all good—all devices are still in the same broadcast domain. Do you remember why this can be really bad? Because all devices must listen to all broadcasts transmitted, that’s why! And if your broadcast domains are too large, the users have less bandwidth and are required to process more broadcasts. Network response time eventually will slow to a level that could cause riots and strikes, so it’s important to keep your broadcast domains small in the vast majority of networks today.

  

  

  

  

Once there are only switches in our example network, things really change a lot! Figure 1.5

demonstrates a network you’ll typically stumble upon today.

![](file:///tmp/lu39596n6x.tmp/lu39596nqv_tmp_235b029a.gif)

  

**FIGURE 1.5** Switched networks creating an internetwork

  

  

  

Here I’ve placed the LAN switches at the center of this network world, with the router connecting the logical networks. If I went ahead and implemented this design, I’ll have created something called virtual LANs, or VLANs, which are used when you logically break up broadcast domains in a layer 2, switched network. It’s really important to understand that even in a switched network environment, you still need a router to provide communication between VLANs. Don’t forget that!

  

Still, clearly the best network design is the one that’s perfectly configured to meet the business requirements of the specific company or client it serves, and it’s usually one in which LAN switches exist in harmony with routers strategically placed in the network.

  

  

  
  

So let’s go back to Figure 1.4 now for a minute and really scrutinize it because I want to ask you this question: How many collision domains and broadcast domains are really there in this internetwork? I hope you answered nine collision domains and three broadcast domains! The broadcast domains are definitely the easiest to spot because only routers break up broadcast domains by default, and since there are three interface connections, that gives you three broadcast domains. But do you see the nine collision domains? Just in case that’s a no, I’ll explain. The all-hub network at the bottom is one collision domain; the bridge network on top equals three collision domains. Add in the switch network of five collision domains—one for eachsw itch port—and you get a total of nine!

  

While we’re at this, in Figure 1.5, each port on the switch is a separate collision domain, and each VLAN would be a separate broadcast domain. So how many collision domains do you see here? I’m counting 12—remember that connections between the switches are considered a collision domain! Since the figure doesn’t show any VLAN information, we can assume the default of one broadcast domain is in place.