local function feedUntil95Percent()
    local feedRemote = {
        [1] = "GiveSoul"
    }

    local useSoulRemote = {
        [1] = "UseSoul"
    }

    while true do
        if workspace.Shiki.OrbSpawn and workspace.Shiki.OrbSpawn.Feed then
            local percentStr = workspace.Shiki.OrbSpawn.Feed.ObjectText

            if percentStr then
                print("Current percent:", percentStr)

                if percentStr ~= '95%' then
                    for i = 1, 2 do
                        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer(unpack(feedRemote))
                    end
                else
                    for i = 1, 2 do
                        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer(unpack(useSoulRemote))
                    end
                end
            else
                warn("Error getting ObjectText")
            end
        end

        wait(1)
    end
end

local function checkForShiki()
    local shiki = workspace:FindFirstChild("Shiki")
    if shiki then
        feedUntil95Percent()
    else
        wait(5)
        checkForShiki()
    end
end

checkForShiki()
