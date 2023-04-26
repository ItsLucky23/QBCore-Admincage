RegisterNetEvent('admincage:handler')
AddEventHandler('admincage:handler', function(args)

    local _source = source

    local xPlayer = QBCore.Functions.GetPlayer(_source)
        
    if xPlayer.Functions.GetPermission() == 'admin' or xPlayer.Functions.GetPermission() == 'superadmin' then
    --if xPlayer.Functions.GetPermission() == 'admin' or xPlayer.Functions.GetPermission() == 'superadmin' or xPlayer.Functions.GetPermission() == 'moderator' then

        if args[1] == 'true' then

            SetPlayerRoutingBucket(_source, 1)

        elseif args[1] == 'false' then

            SetPlayerRoutingBucket(_source, 0)

        end

        if #args > 0 then

            for i = 1, #args do

                if i ~= 1 then

                    if GetPlayerRoutingBucket(args[i]) ~= 0 then

                        SetPlayerRoutingBucket(args[i], 0)

                    else

                        SetPlayerRoutingBucket(args[i], 1)

                    end

                end

            end

        end

    end

end)