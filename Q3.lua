--Q3 - Fix or improve the name and the implementation of the below method

 
--Changed name to better reflect functionality

function remove_member_from_PlayerParty(playerId, membername)

player = Player(playerId)

local party = player:getParty()

  for k,v in pairs(party:getMembers()) do

      if v == Player(membername) then

          party:removeMember(Player(membername))

          --End function after removing member, since no need to continue going through the list of party members
          return

      end

  end

end