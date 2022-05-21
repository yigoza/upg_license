IPlist =
    {
        {"avenger", "217.195.195.42"},  --upgrade   
        {"yigoza", "217.195.207.199"},  --upgrade  
    }
setElementData(root, "koruma", 1)
oneat = nil
function koruma()
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
    if oneat then return end
                if data1 == key then 
                    setElementData(root, "koruma", 1)
                    msg("start","Kullanan İP :   "  ..ip.." Sürüm:  **Var!  ** Sunucu İsmi : " ..name.. " **Paket Sorunsuz Aktif!**" )
                    oneat = true
              else 
                    setElementData(root, "koruma", nil)
                    msg("start","Paketi Çalan Sunucu :   "  ..ip.." Lisans:  **Yok!  ** Sunucu İsmi : " ..name.. " **Paket Çalıştırılamadı!**" )
              end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)   
    if getElementData(root, "koruma") ~= 1 then     
        setElementData(root, "koruma", nil)
        shutdown("Upgrade Paket koruması")
    return end 
end
addEvent("startupgrade", true)
addEventHandler("startupgrade", root, koruma)
