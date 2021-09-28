# Stats genrated by GenCard(): Health, Speed, Defence, Crit, Attack

function GenCard(amntCards ::Int64, Cards ::Array)
  for i in 1:amntCards

    # Generate tempStats
    tempHealth ::Int64 = rand((35:100))
    tempDefence ::Int64 = tempHealth < 50 ? rand((50:70)) : rand((10:30))
    tempAttack ::Int64 = tempDefence < 50 ? rand((25:40)) : rand((10:15))
    tempSpeed ::Int64 = tempAttack < 50 ? rand((70:90)) : rand((10:60))
    tempCrit ::Int64 = tempAttack < 30 ? rand((10:15)) : rand((2:9))
    tempCard ::Dict = Dict("Health"=>tempHealth,   "Speed"=>tempSpeed, "Defence"=>tempDefence, "Attack" =>tempAttack, "Critical"=>tempCrit)

    push!(Cards,tempCard)

  end
end