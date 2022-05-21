IPlist =
    {
        {"vezirtest", "95.70.165.185"},  --Hypnos   
        {"singlesamet", "213.226.119.89"},  --Hypnos  
        {"yıldırımpd", "51.255.105.230"},  --Hypnos  
        {"usuk", "195.85.205.147"},  --Hypnos  
    }
setElementData(root, "vezirkoruma", 1)
oneat = nil
function koruma(res)
    if getElementData(root, "koruma") ~= 1 then     
    setElementData(root, "vezirkoruma", nil)
    shutdown("Lisanssız model - Vezir Model")
    return end
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
    if oneat then return end
            print("bu koruma Winter Scripting tarafından yapılmıştır.")
                if data1 == key then 
                    setElementData(root, "vezirkoruma", 1)
                    print ("Vezir Moddingi Tercih Ettiğiniz İçin Teşekkürler :slight_smile: .")
                    sendMessage("paketlog"," VEZİR, Obje ismi : "..getResourceName(getThisResource()).." Kullanan İP :   "  ..ip.." Sürüm:  **Var!  ** Sunucu İsmi : " ..name.. " **Model Sorunsuz Aktif!**" )
                    oneat = true
              else 
                    shutdown ("Çalıntı Model Tespit Edildi @Vezir#8999 .")
                    setElementData(root, "vezirkoruma", nil)
                    sendMessage("paketlog","Modeli Çalan Sunucu :   "  ..ip.." Lisans:  **Yok!  ** Sunucu İsmi : " ..name.. " **Model Çalıştırılamadı!**" )
              end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)    
end
addEvent("starthypnos", true)
addEventHandler("starthypnos", root, koruma)
Webhooks = {
    ["paketlog"] = {
        link = "https://discord.com/api/webhooks/855906476806897664/g4w1T1NR3g2EF6d6-C9OiejKuPT9onJHcFbV6HJpDOZhBMtTopJzHpQN9k3Y-jTIYNVh",
        avatar = "https://i.imgyukle.com/2021/06/27/jRWyoH.png", -- if u want to empty, enter nil
        username = "Vezir Obje Lisans & Koruma"
    }
    
}