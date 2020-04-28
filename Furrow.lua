_addon.name = 'Furrow'
_addon.author = 'Algar updated by bulbafett'
_addon.version = '1.1'
_addon.language = 'english'
_addon.commands = {'furrow'}

require('logger')
require('coroutine')

notice('This version of furrow can work for 1, 2, or 3 furrows. See additional information')

running = false

function loop(furrows)
	if running == true then
		windower.add_to_chat(200, 'Furrow: Starting the planting cycle.')
		plantcycle(furrows)
		coroutine.sleep (2)
		running = true
		windower.add_to_chat(200, 'Furrow: Sleeping for an hour before the harvest.')
		coroutine.sleep (600)
		windower.add_to_chat(200, 'Reminder: Furrow will commence harvest in fifty minutes. Use //furrow abort to cancel.')
		coroutine.sleep (600)
		windower.add_to_chat(200, 'Reminder: Furrow will commence harvest in forty minutes. Use //furrow abort to cancel.')
		coroutine.sleep (600)
		windower.add_to_chat(200, 'Reminder: Furrow will commence harvest in thiry minutes. Use //furrow abort to cancel.')
		coroutine.sleep (600)
		windower.add_to_chat(200, 'Reminder: Furrow will commence harvest in twenty minutes. Use //furrow abort to cancel.')
		coroutine.sleep (600)
		windower.add_to_chat(200, 'Reminder: Furrow will commence harvest in ten minutes. Use //furrow abort to cancel.')
		coroutine.sleep (600)
		windower.add_to_chat(200, 'Furrow: Starting the harvesting cycle.')
		harvestcycle(furrows)
		coroutine.sleep (2)
		windower.add_to_chat(200, 'Furrow: Cycle complete! Restarting the loop shortly...')
		running = true
		coroutine.sleep(5)
		loop()
	else
		windower.add_to_chat(200, 'Something went wrong! Please try your command again after reloading Furrow.')
		end
end

function escapeSpam()
	counter = 0
	while counter < 4 do
		counter = counter + 1
		windower.send_command('setkey escape down')
		coroutine.sleep(0.5)
		windower.send_command('setkey escape up')
		coroutine.sleep(0.5)
	end
end


function target1(counter)
	windower.send_command('setkey TAB down')
    coroutine.sleep(0.5)
    windower.send_command('setkey TAB up')
    coroutine.sleep(0.5)
    counter = counter+1
	if counter > 10 then
		windower.add_to_chat(200,'Furrow: Unable to target a furrow after 10 attempts, escaping 3x and retrying')
		escapeSpam()
		counter = 0
	end			
		player = windower.ffxi.get_player()
		
		if windower.ffxi.get_mob_by_target( 't' ) == nil then
            windower.add_to_chat(200, 'Furrow: No target, cycling.' )
			coroutine.sleep (0.5)
			target1(counter)
		elseif windower.ffxi.get_mob_by_target('t').name == "Garden Furrow" then
			windower.add_to_chat(200, 'Furrow: Found the first furrow.')
        else
            coroutine.sleep(0.5)
			target1(counter)
		end
end	
	
function target2(counter)
	windower.send_command('setkey TAB down')
    coroutine.sleep(0.5)
    windower.send_command('setkey TAB up')
    coroutine.sleep(0.5)
    counter = counter+1
	if counter > 10 then
		windower.add_to_chat(200,'Furrow: Unable to target a furrow after 10 attempts, escaping 3x and retrying')
		escapeSpam()
		counter = 0
	end	
		player = windower.ffxi.get_player()
		
		if windower.ffxi.get_mob_by_target( 't' ) == nil then

            windower.add_to_chat(200, 'Furrow: No target, cycling.' )
			coroutine.sleep (0.5)
			target2(counter)
		elseif windower.ffxi.get_mob_by_target('t').name == "Garden Furrow #2" then
			windower.add_to_chat(200, 'Furrow: Found the second furrow.')
        else
            coroutine.sleep(0.5)
			target2(counter)
		end
end	

function target3(counter)
	windower.send_command('setkey TAB down')
    coroutine.sleep(0.5)
    windower.send_command('setkey TAB up')
    coroutine.sleep(0.5)
    counter = counter+1
	if counter > 10 then
		windower.add_to_chat(200,'Furrow: Unable to target a furrow after 10 attempts, escaping 3x and retrying')
		escapeSpam()
		counter = 0
	end			
		player = windower.ffxi.get_player()
		
		if windower.ffxi.get_mob_by_target( 't' ) == nil then
            windower.add_to_chat( 200, 'Furrow: No target, cycling.' )
			coroutine.sleep (0.5)
			target3(counter)
		elseif windower.ffxi.get_mob_by_target('t').name == "Garden Furrow #3" then
			windower.add_to_chat(200, 'Furrow: Found the third furrow.')
        else
            coroutine.sleep(0.5)
			target3(counter)
		end
end	

function plant()
		windower.add_to_chat(200, 'Furrow: Planting a revival root.')
		windower.chat.input("/item \"Revival Root\" <t>")
		coroutine.sleep(5)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(2)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(2)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(5)
		windower.send_command('setkey escape down')
		coroutine.sleep(0.5)
		windower.send_command('setkey escape up')
		coroutine.sleep(0.5)
end			

function harvest()
		windower.add_to_chat(200, 'Furrow: Harvesting this furrow.')
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(5)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(2)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(2)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(2)
		windower.send_command('setkey enter down')
		coroutine.sleep(0.5)
		windower.send_command('setkey enter up')
		coroutine.sleep(5)
		windower.send_command('setkey escape down')
		coroutine.sleep(0.5)
		windower.send_command('setkey escape up')
		coroutine.sleep(0.5)
end

function harvestcycle(furrow)
	if running == true then
		windower.add_to_chat(200, 'Furrow: Searching for the first furrow.')
		target1(0)
		coroutine.sleep(2)
		harvest()
		coroutine.sleep(2)
		if furrow > 1 then
			windower.add_to_chat(200, 'Furrow: Searching for the second furrow.')
			target2(0)
			coroutine.sleep(2)
			harvest()
			coroutine.sleep(2)
		end
		if furrow > 2 then
			windower.add_to_chat(200, 'Furrow: Searching for the third furrow.')
			target3(0)
			coroutine.sleep(2)
			harvest()
			coroutine.sleep(2)
		end
		running = false
		windower.add_to_chat(200, 'Furrow: Harvesting Complete!')
	else
		windower.add_to_chat(200, 'Furrow: Something went wrong! Please try your command again after reloading Furrow.')
		end
end

function plantcycle(furrow)
	if running == true then
		windower.add_to_chat(200, 'Furrow: Searching for the first furrow.')
		target1(0)
		coroutine.sleep(2)
		plant()
		coroutine.sleep(2)
		if furrow > 1 then
			windower.add_to_chat(200, 'Furrow: Searching for the second furrow.')
			target2(0)
			coroutine.sleep(2)
			plant()
			coroutine.sleep(2)
		end
		if furrow > 2 then
			windower.add_to_chat(200, 'Furrow: Searching for the third furrow.')
			target3(0)
			coroutine.sleep(2)
			plant()
			coroutine.sleep(2)
		end
		running = false
		windower.add_to_chat(200, 'Furrow: Planting Complete!')
	else
		windower.add_to_chat(200, 'Furrow: Something went wrong! Please try your command again after reloading Furrow.')
		end
end

function furrow_command(...)
    if #arg > 2 then
        windower.add_to_chat(167, 'Invalid command.')
    elseif arg[ 1 ]:lower() == 'start' then
        if running == false then
        	if #arg == 2 then
        		furrow = tonumber(arg[2])
        	else
        		furrow = 3
        	end
            running = true
            windower.add_to_chat(200, 'Furrow: Begin loop...')
            loop(furrow)
        elseif running == true then
            windower.add_to_chat(200, 'It appears Furrow is already running an action, please use //furrow abort to reload the addon and try again.')
        end
    elseif arg[ 1 ]:lower() == 'stop' then
        if running == false then
            windower.add_to_chat(200, 'Furrow: There are no current actions to stop. Use //furrow abort to force-reload the addon if necessary.')
		elseif running == true then
			windower.add_to_chat(200, 'Furrow: Aborting all actions and reloading.')
			windower.send_command('lua reload furrow')
        end
	elseif arg[ 1 ]:lower() == 'plant' then
    	if #arg == 2 then
    		furrow = tonumber(arg[2])
    	else
    		furrow = 3
    	end
		if running == false then
            windower.add_to_chat(200, 'Furrow: Starting a single planting cycle.')
			running = true			
			plantcycle(furrow)
		elseif running == true then
            windower.add_to_chat(200, 'It appears Furrow is already running an action, please use //furrow abort to reload the addon and try again.')
		end
	elseif arg[ 1 ]:lower() == 'harvest' then
    	if #arg == 2 then
    		furrow = tonumber(arg[2])
    	else
    		furrow = 3	
    	end	
		if running == false then
            windower.add_to_chat(200, 'Furrow: Starting a single harvesting cycle.')
			running = true
			harvestcycle(furrow)
		elseif running == true then
            windower.add_to_chat(200, 'It appears Furrow is already running an action, please use //furrow abort to reload the addon and try again.')
		end
	elseif arg[ 1 ]:lower() == 'abort' then
        windower.add_to_chat(200, 'Furrow: Aborting all actions and reloading.')
		windower.send_command('lua reload furrow')
	elseif arg[ 1 ]:lower() == 'help' then
        	windower.add_to_chat(200, 'Furrow commands: start stop abort plant harvest.')
		windower.add_to_chat(200, '//furrow start # - where number is the number of furrows you have (default: 3)')
		windower.add_to_chat(200, '//furrow stop - this attempts to gracefully stop the furrow process')
		windower.add_to_chat(200, '//furrow abort - this attempts to forcefully stops the furrow process and reloads the LUA')
		windower.add_to_chat(200, '//furrow plant # - where number is the number of furrows you have (default: 3)')
		windower.add_to_chat(200, '//furrow harvest # - where number is the number of furrows you have (default: 3)')
		windower.add_to_chat(200, '//furrow abort - where number is the number of furrows you have (default: 3)')
	else
		end
end

windower.register_event('addon command', furrow_command)
