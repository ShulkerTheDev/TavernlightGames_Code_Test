--Q1 - Fix or improve the implementation of the below methods

 
local function releaseStorage(player)

  player:setStorageValue(1000, -1)

end

 

function onLogout(player)

  --Assuming that setStorageValue, sets the value and doesn't add or subject we should check to see if the value is what it should be

  if player:getStorageValue(1000) ~= -1 then

    addEvent(releaseStorage, 1000, player)

  end

  return true

end
