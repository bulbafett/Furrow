Furrow Readme

Disclaimer: 
Furrow is a Windower 4 addon specifically designed to automate planting and harvesting from your Mog Garden Furrows. This type of automation may be against EULA. Use at your own risk.

Additionally, Furrow was written for my personal use and I have since capped my Mog Garden ranks; as such, do not expect any updates, support, or other assistance from the author.

Furrow no longer assumes you have 3 furrows. By default will act if you do but has ability to pass the number of furrows you currently have along with the start, plant and harvest commands.

Furrow does not use packets. It relies on send commands. Thus, any other actions while Furrow is running may interfere with the addon. A reminder on grow times is used in case you leave the Mog Garden mid cycle.

Commands: /furrow <command>

1)plant: Plants a Revival Root in each of your furrows. Can be given number based on current number of furrows ex: plant 2
2)harvest: Harvests all items from your furrows. Can be given number based on current number of furrows ex: harvest 2
3)start: Starts a loop that plants, waits an hour, and harvests the furrows before beginning again. Can be given a number based on current number of furrows ex: start 1
4)stop: Attempts to gracefully stop the program.
5)abort: forces a stop to the loop and reloads the lua.
6)help: Lists these commands.

Guide:

1) Ensure you have sufficient revival roots in your inventory. Using the assistant "Kuyin Hathdenna" with the furrows command of "Look for seeds" should give you a very large surplus of roots.

2) Move your character to an area where tab targetting will target all three furrows. Furrows will cycle targets with tab and will automatically seek out the plots. I stand in front of the second plot, facing it, but other areas may work.

3) Decide to plant, harvest, or loop. Please note that the loop cycle starts with a planting cycle, so it may be necessary to use //furrow harvest first, or to clear the furrows manually.

4) ???

5) Profit

Please note that furrow commands all have adequate pauses between them to ensure that nothing falls out of sync when used for hours at a time. Slow and steady wins the race. One cycle takes around 1hr, 3min. Also this addon is verbose, as I used the messages to troubleshoot and finetune the timing. This is easily edited with some very basic lua knowledge.

512 total harvests are required for Rank 7 in your Mog Garden. You can find out how many harvests you've finished by talking to the Moogle, asking about the garden, and asking about tidbits.
