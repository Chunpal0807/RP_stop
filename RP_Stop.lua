-- 중단 구문 

RegisterCommand('중단', function (source, args, rawCommand) -- 명령어 설정 
		local user_id = vRP.getUserId({source})
		local name = GetPlayerName(source)
			
		if vRP.hasPermission({user_id, "chunpal.babo"}) then -- 퍼미션 설정 
			TriggerClientEvent(
				"chat:addMessage",
				-1,
				{							
					template = '<span style="font-weight: bold; font-size: 1.15vh; border-radius: 3px; padding: 1px 15px 1px 15px; background: linear-gradient(to bottom, rgba(255,108,235,0.9) 0%, rgba(255,54,181,0.05) 100%); margin: 5px;">관리</span>^* - <span style="font-weight: bold; font-size: 1.15vh; border-radius: 3px; padding: 3px 9px 3px 9px; background: linear-gradient(180deg, #2a2b28, #2a2b28); margin: 5px;">{0}님이 RP 명령어를 사용하여, RP중단 선언. (부적절한 중단이면 관리자호출 바랍니다)</span>',
					args = {name},
				}
			)

				Wait(1000)
				TriggerClientEvent(
				"chat:addMessage",
				-1,
				{							
					template = '<span style="font-weight: bold; font-size: 1.15vh; border-radius: 3px; padding: 1px 15px 1px 15px; background: linear-gradient(to bottom, rgba(255,108,235,0.9) 0%, rgba(255,54,181,0.05) 100%); margin: 5px;">관리</span>^* - <span style="font-weight: bold; font-size: 1.15vh; border-radius: 3px; padding: 3px 9px 3px 9px; background: linear-gradient(180deg, #2a2b28, #2a2b28); margin: 5px;">{0}님이 RP 명령어를 사용하여, RP중단 선언. (부적절한 중단이면 관리자호출 바랍니다)</span>',
				}
			)

			
			else
			vRPclient.notify(source,{"권한이 부족합니다"})
		end
end, false)