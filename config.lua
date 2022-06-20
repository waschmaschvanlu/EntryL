Config = {}
Translation = {}
Config.Refreshcheck = 1 -- HOW MUCH TIME SHOULD PASS BETWEEN REFRESHES 
Config.Spawn = vector3(-262.4367, -965.2876, 31.2240) -- WHERE TO TP IF OUT OF RANGE
Config.Airport = vector3(-262.4367, -965.2876, 31.2240) -- WHERE THE RANGE SHOULD BE
Config.Exitcoords = vector3(-262.4367, -965.2876, 31.2240) 
Config.Range = 5
Config.CustomNotify = false
function notify(txt)
    print(txt)
end
Config.Adminranks = {"admin", "superadmin"}
Config.OffPermitCommand = "ausreise"
Config.PermitCommand = "einreise"


Config.Locale = 'en'
Translation = {
    ['de'] = {
        ['toofar'] = 'Du bist nicht eingereist, und wurdest daher zurück zum flughafen teleportiert!',
        ['notallowedw'] = 'Du bist dazu nicht Berechtigt!!',
        ['noid'] = 'Du hast keine ID eingegeben!!',
        ['done'] = 'Du hast den Spieler Erfolgreich Eingereist ID:',
        ['doner'] = 'Du hast den Spieler Erfolgreich Ausgereist ID:',
    },
    ['en'] = {
        ['toofar'] = 'You Didnt have an Entry-Permit! and for that reason you got teleported back to the Airport',
        ['notallowed'] = 'You are not allowed to do that!',
        ['noid'] = 'You entered no ID!!',
        ['noidf'] = 'The ID doesnt match any player..',
        ['done'] = 'You Sucessfuly gave permit to the ID:',
        ['doner'] = 'You Removed permit from the ID:',    
    }
}