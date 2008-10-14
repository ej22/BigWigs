﻿------------------------------
--      Are you local?      --
------------------------------

local boss = BB["Anub'Rekhan"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Anubrekhan",

	locust = "Locust Swarm",
	locust_desc = "Warn for Locust Swarm.",

	starttrigger1 = "Just a little taste...",
	starttrigger2 = "Yes, run! It makes the blood pump faster!",
	starttrigger3 = "There is no way out.",
	engagewarn = "Anub'Rekhan engaged. First Locust Swarm in ~90 sec",

	gainendwarn = "Locust Swarm ended!",
	gainnextwarn = "Next Locust Swarm in ~85 sec",
	gainwarn10sec = "~10 Seconds until Locust Swarm",
	gainincbar = "Next Locust Swarm",
	gainbar = "Locust Swarm",

	castwarn = "Incoming Locust Swarm!",
} end )

L:RegisterTranslations("deDE", function() return {
	locust = "Heuschreckenschwarm",
	locust_desc = "Warnung, wenn Anub'Rekhan Heuschreckenschwarm wirkt.",

	starttrigger1 = "Nur einmal kosten...",
	starttrigger2 = "Rennt! Das bringt das Blut in Wallung!",
	starttrigger3 = "Es gibt kein Entkommen.",
	engagewarn = "Anub'Rekhan angegriffen! Heuschreckenschwarm in ~90 Sekunden!",

	gainendwarn = "Heuschreckenschwarm vorbei!",
	gainnextwarn = "N\195\164chster Schwarm in ~85 Sekunden.",
	gainwarn10sec = "Heuschreckenschwarm in ~10 Sekunden",
	gainincbar = "N\195\164chster Schwarm",
	gainbar = "Heuschreckenschwarm",

	castwarn = "Heuschreckenschwarm!",
} end )

L:RegisterTranslations("koKR", function() return {
	locust = "메뚜기 떼",
	locust_desc = "메뚜기 떼를 알립니다.",

	starttrigger1 = "어디 맛 좀 볼까...",
	starttrigger2 = "그래, 도망쳐! 더 신선한 피가 솟구칠 테니!",
	starttrigger3 = "나가는 길은 없다.",
	engagewarn = "아눕레칸 전투시작! 약 90초 후 첫번째 메뚜기 떼!",

	gainendwarn = "메뚜기 떼 종료!",
	gainnextwarn = "약 85초 이내 다음 메뚜기 떼!",
	gainwarn10sec = "10초 이내 메뚜기 떼",
	gainincbar = "다음 메뚜기 떼",
	gainbar = "메뚜기 떼",

	castwarn = "메뚜기 떼 소환!",
} end )

L:RegisterTranslations("zhCN", function() return {
	locust = "虫群警报",
	locust_desc = "虫群警报",

	starttrigger1 = "一些小点心……",
	starttrigger2 = "对，跑吧！那样伤口出血就更多了！",
	starttrigger3 = "你们逃不掉的。",
	engagewarn = "阿努布雷坎已激活 - ~90秒后出现第一波虫群",

	gainendwarn = "虫群风暴结束了！",
	gainnextwarn = "~85秒后出现下一波虫群。",
	gainwarn10sec = "~10秒后出现下一波虫群。",
	gainincbar = "下一波虫群",
	gainbar = "虫群风暴",

	castwarn = "虫群风暴 - 3秒后发动！MT立刻开始走位",
} end )

L:RegisterTranslations("zhTW", function() return {
	locust = "蝗蟲風暴警告",
	locust_desc = "蝗蟲風暴的警報",

	starttrigger1 = "一些小點心……",
	starttrigger2 = "對，跑吧！那樣傷口出血就更多了！",
	starttrigger3 = "你們逃不掉的。",
	engagewarn = "阿努比瑞克漢已進入戰鬥 - 90 秒後出現第一波蝗蟲風暴！",

	gainendwarn = "蝗蟲風暴結束了！",
	gainnextwarn = "85 秒後出現下一波蝗蟲風暴！",
	gainwarn10sec = "10 秒後出現下一波蝗蟲風暴！",
	gainincbar = "下一波蝗蟲風暴",
	gainbar = "蝗蟲風暴",

	castwarn = "蝗蟲風暴來了！",
} end )

L:RegisterTranslations("frFR", function() return {
	locust = "Nuée de sauterelles",
	locust_desc = "Préviens quand Anub'Rekhan invoque ses Nuées de sauterelles.",

	starttrigger1 = "Rien qu'une petite bouchée…",
	starttrigger2 = "Oui, courez ! Faites circuler le sang !",
	starttrigger3 = "Nulle part pour s'enfuir.",
	engagewarn = "Anub'Rekhan engagé. Première Nuée dans ~90 sec.",

	gainendwarn = "Fin de la Nuée de sauterelles !",
	gainnextwarn = "Prochaine Nuée de sauterelles dans ~85 sec.",
	gainwarn10sec = "~10 sec. avant la Nuée de sauterelles",
	gainincbar = "Prochaine Nuée",
	gainbar = "Nuée de sauterelles",

	castwarn = "Nuée de sauterelles imminente !",
} end )

----------------------------------
--      Module Declaration      --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = BZ["Naxxramas"]
mod.enabletrigger = boss
mod.guid = 15956
mod.toggleoptions = {"locust", "bosskill"}
mod.revision = tonumber(("$Revision$"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:AddCombatListener("SPELL_AURA_APPLIED", "GainSwarm", 28785)
	self:AddCombatListener("SPELL_CAST_START", "Swarm", 28785)
	self:AddCombatListener("UNIT_DIED", "BossDeath")

	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
end

------------------------------
--      Event Handlers      --
------------------------------

function mod:GainSwarm(unit, spellID)
	if unit == boss and self.db.profile.locust then
		self:DelayedMessage(20, L["gainendwarn"], "Important")
		self:Bar(L["gainbar"], 20, spellID)
		self:IfMessage(L["gainnextwarn"], "Urgent", spellID)
		self:DelayedMessage(75, L["gainwarn10sec"], "Important")
		self:Bar(L["gainincbar"], 85, spellID)
	end
end

function mod:Swarm(_, spellID)
	if self.db.profile.locust then
		self:IfMessage(L["castwarn"], "Attention", spellID)
		self:Bar(L["castwarn"], 3, spellID)
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if self.db.profile.locust and (msg:find(L["starttrigger1"]) or msg == L["starttrigger2"] or msg == L["starttrigger3"]) then
		self:Message(L["engagewarn"], "Urgent")
		self:DelayedMessage(80, L["gainwarn10sec"], "Important")
		self:Bar(L["gainincbar"], 90, 28785)
	end
end

