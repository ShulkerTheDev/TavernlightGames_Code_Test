--Q2 - Fix or improve the implementation of the below method


function printSmallGuildNames(memberCount)

  -- this method is supposed to print names of all guilds that have less than memberCount max members

  local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"

  local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))

  local guildName = {}
  --Not familiar with lua, so did what I would've done in languages I am familiar with
  --Created a list, looped through the guide names and inserted them into a list, then printed that list 
  --Printed it out as one list, so that the print function isn't being run over and over, and seperated with a comma for ease of reading or parsing
  if resultId then
    repeat
      table.insert(guildName, result.getString("name"))
    until not result.next(resultId)
  end
  print(table.concat(guildName, ", "))

end