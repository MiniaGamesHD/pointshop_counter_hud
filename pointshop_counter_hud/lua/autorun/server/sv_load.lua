if SERVER then
    AddCSLuaFile()
    AddCSLuaFile('cl_pshud.lua')
    AddCSLuaFile('config.lua')
    
    print("|---------------------------------|")
    print("|---==[Pointshop Counter HUD]==---|")
    print("|    ADDON SUCCESSFULY LOADED     |")
    print("|---------------------------------|")
end

if CLIENT then
    include('cl_pshud.lua')
    include('config.lua')
end