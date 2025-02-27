local L = BigWigs:NewBossLocale("Eranog", "koKR")
if not L then return end
if L then
	 L.custom_on_nameplate_fixate = "시선 고정 네임플레이트 아이콘"
	 L.custom_on_nameplate_fixate_desc = "당신에게 시선이 고정된 타라세크의 네임플레이트에 아이콘을 표시합니다.\n\n 네임플레이트를 지원하는 애드온(KuiNameplates, Plater)을 사용하고 적 네임플레이트가 활성화된 상태여야함."

	 L.molten_cleave = "전방기"
	 L.incinerating_roar = "포효"
	 L.molten_spikes = "쐐기"
	 L.collapsing_army = "쫄 소환"
	 L.greater_flamerift = "신화 쫄"
	 L.leaping_flames = "불꽃"
end

L = BigWigs:NewBossLocale("Terros", "koKR")
if L then
	 L.rock_blast = "같이 맞아주기"
	 L.resonating_annihilation = "절멸 - 잔해 조심"
	 L.awakened_earth = "기둥 생성"
	 L.shattering_impact = "충격 - 잔해 조심"
	 L.concussive_slam = "탱커 조심"
	-- L.infused_fallout = "Dust"
end

L = BigWigs:NewBossLocale("The Primal Council", "koKR")
if L then
	 L.primal_blizzard = "눈보라" -- Primal Blizzard
	 L.earthen_pillars = "기둥" -- Earthen Pillars
	 L.meteor_axes = "도끼" -- Meteor Axes
	 L.meteor_axe = "도끼" -- Singular
	 L.meteor_axes_melee = "근딜 도끼"
	 L.meteor_axes_ranged = "원딜 도끼"
	 L.conductive_marks = "표식" -- Conductive Marks
	 L.conductive_mark = "표식" -- Singular

	 L.custom_off_chain_lightning = "연쇄 번개는 기본적으로 꺼져있습니다. 활성화해서 연쇄 번개를 활성화하십시오."

	 L.custom_on_stop_timers = "항상 능력 바 표시Always show ability bars"
	 L.custom_on_stop_timers_desc = "항상 표시될 능력: 전도성 표식"
end

L = BigWigs:NewBossLocale("Sennarth, The Cold Breath", "koKR")
if L then
	 L.ascend = "올라감"
	 L.ascend_desc = "세나스가 얼어붙은 절벽쪽으로 올라갑니다."
	 L.chilling_blast = "산개"
	 L.freezing_breath = "쫄 브레스"
	 L.webs = "거미줄"
	 L.web = "거미줄"
	 L.gossamer_burst = "낙사 조심"
	 L.repelling_burst = "넉백"
end

L = BigWigs:NewBossLocale("Dathea, Ascended", "koKR")
if L then
	 L.conductive_marks = "표식"
	 L.conductive_mark = "표식"
	 L.raging_burst = "회오리 생성"
	 L.cyclone = "당기기"
	 L.crosswinds = "회오리 재배치"
end

L = BigWigs:NewBossLocale("Kurog Grimtotem", "koKR")
if L then
	-- -- Types
	-- L.damage = "Damage Skills"
	-- L.damage_desc = "Display timers for Damage abilities (Magma Burst, Biting Chill, Enveloping Earth, Lightning Crash) when we don't know what alter the boss is at."
	-- L.damage_bartext = "%s [Dmg]" -- {Spell} [Dmg]

	-- L.avoid = "Avoid Skills"
	-- L.avoid_desc = "Display timers for Avoid abilities (Molten Rupture, Frigid Torrent, Erupting Bedrock, Shocking Burst) when we don't know what alter the boss is at."
	-- L.avoid_bartext = "%s [Avoid]" -- {Spell} [Avoid]

	-- L.ultimate = "Ultimate Skills"
	-- L.ultimate_desc = "Display timers for Ultimate abilities (Searing Carnage, Absolute Zero, Seismic Rupture, Thundering Strike) when we don't know what alter the boss is at."
	-- L.ultimate_bartext = "%s [Ult]" -- {Spell} [Ult]

	 -- 불
	 L.magma_burst = "웅덩이 생성"
	 L.molten_rupture = "웨이브 조심"
	 L.searing_carnage = "살육"

	 -- 냉기
	 L.biting_chill = "추위 도트"
	 L.frigid_torrent = "구슬 방출"
	 L.absolute_zero = "같이 맞아주기"
	 L.absolute_zero_melee = "근딜 나눠맞기"
	 L.absolute_zero_ranged = "원딜 나눠맞기"

	 -- 대지
	 L.enveloping_earth = "치유 흡수"
	 L.erupting_bedrock = "지진 넉백"

	 -- 폭풍
	 L.lightning_crash = "번개 충돌"
	 L.thundering_strike = "맞아주기"

	 -- 일반
	 L.primal_attunement = "미니 광폭"

	 -- Stage 2
	 L.violent_upheaval = "기둥 "
end

L = BigWigs:NewBossLocale("Broodkeeper Diurna", "koKR")
if L then
	 L.eggs_remaining = "알 %d 개 남음!"
	 L.broodkeepers_bond = "알 남아있음"
	 L.greatstaff_of_the_broodkeeper = "대지팡이"
	 L.greatstaffs_wrath = "레이저"
	 L.clutchwatchers_rage = "분노"
	 L.rapid_incubation = "급속 배양"
	 L.icy_shroud = "치유량 흡수 껍질"
	 L.broodkeepers_fury = "분노"
	 L.frozen_shroud = "속박"
end

L = BigWigs:NewBossLocale("Raszageth the Storm-Eater", "koKR")
if L then

end

L = BigWigs:NewBossLocale("Vault of the Incarnates Trash", "koKR")
if L then

end
