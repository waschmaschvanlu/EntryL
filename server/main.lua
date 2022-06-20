
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('einreise:geteinreise', function(source, cb)
    local ssource = source
    local xPlayer = ESX.GetPlayerFromId(ssource)
        ---- print(playerId)
        MySQL.Async.fetchAll('SELECT * from users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier,
        },function(result)
          if result then
            for _, v in pairs(result) do
                cb(v.permit)
            end
        else
            print("NO EXP TABLE FOUND FOR ENTRY PLEASE ADD IT IN YOUR MYSQL!!")
          end

    
      
        end)
      end)


      RegisterCommand(Config.PermitCommand, function(source, args, rawCommand)
        local ssource = source
        local xPlayer = ESX.GetPlayerFromId(ssource)
        local group = xPlayer.getGroup()
        print(group)
        for k, v in pairs(Config.Adminranks) do
            if group == v then
                lol = true
            end
            if lol then
         if args[0] == nil then
            if Config.CustomNotify then
                notify(Translation[Config.Locale]['noid'])
                else
                    xPlayer.showNotification(Translation[Config.Locale]['noid'])
        end
        local xPlayerr = ESX.GetPlayerFromId(args[1])
        print(args[1])
        print(xPlayerr)
        if xPlayerr == nil then
            if Config.CustomNotify then
                notify(Translation[Config.Locale]['fnoid'])
                else
                    xPlayer.showNotification(Translation[Config.Locale]['fnoid'])
        end 
        else
            print("yeah")
        MySQL.Async.execute('UPDATE users SET permit = @permit WHERE identifier = @identifier', {
        ['@identifier'] = xPlayerr.identifier,
        ['@permit'] = 1,
    },function()
            if Config.CustomNotify then
                notify(Translation[Config.Locale]['done'] .. args[1])
                else
                    xPlayerr.showNotification(Translation[Config.Locale]['done'] .. args[1])
                   -- add tp event here if you need and want man
        end
    end)
    end

         end
            else
                if Config.CustomNotify then
                    notify(Translation[Config.Locale]['notallowed'])
                    else
                        xPlayer.showNotification(Translation[Config.Locale]['notallowed'])
            end
        end
        end

end)

RegisterCommand(Config.OffPermitCommand, function(source, args, rawCommand)
        local ssource = source
        local xPlayer = ESX.GetPlayerFromId(ssource)
        local group = xPlayer.getGroup()
        print(group)
        for k, v in pairs(Config.Adminranks) do
            if group == v then
                lol = true
            end
            if lol then
         if args[0] == nil then
            if Config.CustomNotify then
                notify(Translation[Config.Locale]['noid'])
                else
                    xPlayer.showNotification(Translation[Config.Locale]['noid'])
        end
        local xPlayerr = ESX.GetPlayerFromId(args[1])
        print(args[1])
        print(xPlayerr)
        if xPlayerr == nil then
            if Config.CustomNotify then
                notify(Translation[Config.Locale]['fnoid'])
                else
                    xPlayer.showNotification(Translation[Config.Locale]['fnoid'])
        end 
        else
            print("yeah")
        MySQL.Async.execute('UPDATE users SET permit = @permit WHERE identifier = @identifier', {
        ['@identifier'] = xPlayerr.identifier,
        ['@permit'] = 0,
    },function()
            if Config.CustomNotify then
                notify(Translation[Config.Locale]['doner'] .. args[1])
                else
                    xPlayerr.showNotification(Translation[Config.Locale]['doner'] .. args[1])
        end  
    end)
    end

         end
            else
                if Config.CustomNotify then
                    notify(Translation[Config.Locale]['notallowed'])
                    else
                        xPlayer.showNotification(Translation[Config.Locale]['notallowed'])
            end
        end
        end
    end)