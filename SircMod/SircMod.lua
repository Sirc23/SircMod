--- STEAMODDED HEADER
--- MOD_NAME: SircMod
--- MOD_ID: SircMod
--- MOD_AUTHOR: [Sirc]
--- MOD_DESCRIPTION: Yet another small Joker pack

----------------------------------------------
------------MOD CODE -------------------------

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

SMODS.Atlas({
	key = "modicon",
	path = "modicon.png",
	px = 34,
	py = 34,
})



--function SMODS.INIT.SircMod()	
	SMODS.Sprite:new("a_sircmod", SMODS.findModByID("SircMod").path, "sircmod_atlas.png", 71, 95, "asset_atli"):register();
	
	local jokers = {
		{
			name = "Baron Hans",
			slug = "j_hans_baron",
			desc = {
				"Earn {C:money}$#1#{} at",
				"end of round",
				"{C:green}#3# in #2#{} chance this",
				"card is destroyed",
				"at end of round"
			},
			config = {
				extra = {
					money_earned = 4,
					denominator = 6
				}
			},
			pos = {x = 3,y = 0},
			rarity = 1,
			cost = 6,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = false,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.money_earned, card.ability.extra.denominator, G.GAME.probabilities.normal} }
			end,
			calc_dollar_bonus = function(self, card)
				local bonus = card.ability.extra.money_earned
				if bonus > 0 then return bonus end
			end
		},
		{
			name = "Bacon Hams",
			slug = "j_hams_bacon",
			desc = {
				"Earn {C:money}$#2# per $#3#{}",
				"owned + {C:money}$#1#{} at end of round",
				"{C:green}#5# in #4#{} chance this",
				"card is destroyed",
				"at end of round"
			},
			config = {
				extra = {
					money_earned = 4,
					extra_money_earned_amount = 2,
					extra_money_earned_per = 10,
					denominator = 1000
				}
			},
			pos = {x = 4,y = 0},
			rarity = 1,
			cost = 5,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.money_earned, card.ability.extra.extra_money_earned_amount, card.ability.extra.extra_money_earned_per, card.ability.extra.denominator, G.GAME.probabilities.normal} }
			end,
			calc_dollar_bonus = function(self, card)
				local bonus = card.ability.extra.money_earned + (math.floor(G.GAME.dollars / card.ability.extra.extra_money_earned_per) * card.ability.extra.extra_money_earned_amount)
				if bonus > 0 then return bonus end
			end
		},
		{
			name = "Hand Me Downs",
			slug = "j_hand_me_downs",
			desc = {
				"All {C:purple}Playing{} Cards and",
				"{C:purple}Standard Packs{} in",
				"the shop are free"
			},
			config = {},
			pos = {x = 0,y = 0},
			rarity = 2,
			cost = 8,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {} }
			end
		},
		{
			name = "Double Down",
			slug = "j_double_down",
			desc = {
				"{C:Xmult}#1#X{} mult on a {C:attention}PvP blind{}",
				"if you have more money than",
				"your {X:purple,C:white}Nemesis{}"
			},
			config = {
				extra = {
					Xmult = 2,
				}
			},
			pos = {x = 0,y = 0},
			rarity = 2,
			cost = 6,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				add_nemesis_info(info_queue)
				return {vars = {card.ability.extra.Xmult} }
			end
		},
		{
			name = "Chrysopoeia Crisis",
			slug = "j_chrysopoeia_crisis",
			desc = {
				"This Joker gains {C:mult}+#1#{} Mult",
				"whenever it converts a scored",
				"{C:attention}Gold{} card to a {C:attention}Steel{} card",
				"{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}"
			},
			config = {
				extra = {
					mult_gained = 6,
					mult = 0
				}
			},
			pos = {x = 5,y = 0},
			rarity = 2,
			cost = 7,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.mult_gained, card.ability.extra.mult} }
			end
		},
		{
			name = "401k",
			slug = "j_401k",
			desc = {
				"Gains {C:money}$#1#{} of {C:attention}sell value{}",
				"for every card {C:attention}sold{}",
				"{C:attention}Sell value{} increases by",
				"{C:attention}#2#%{} at end of round"
			},
			config = {
				extra = {
					money_earned = 1,
					interest = 10
				}
			},
			pos = {x = 2,y = 0},
			rarity = 3,
			cost = 8,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.money_earned, card.ability.extra.interest} }
			end
		},
		{
			name = "Vanda",
			slug = "j_vanda",
			desc = {
				"Converts {C:money}$#1#{} into {X:mult,C:white}X#2#{} Mult",
				"at the end of the {C:money}shop{}",
				"(up to {C:money}$#3#{})",
				"{C:inactive}(Currently {X:mult,C:white} X#4# {C:inactive} Mult){}"
			},
			config = {
				extra = {
					money_mod = 1,
					Xmult_mod = .1,
					max_money_mod = 10,
					current_Xmult = 1
				}
			},
			pos = {x = 0,y = 0},
			soul_pos = {x = 1, y = 0},
			rarity = 4,
			cost = 20,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.money_mod, card.ability.extra.Xmult_mod, card.ability.extra.max_money_mod, card.ability.extra.current_Xmult} }
			end
		}
		
    }
	
	function addJokersToPools(jokerTable, atlas)
		for _, v in pairs(jokerTable) do
			joker = SMODS.Joker:new(
				v.name, 
				v.slug, 
				v.config,
				v.pos,
				{name = v.name, text = v.desc},
				v.rarity,
				v.cost, 
				nil, 
				nil, 
				v.blueprint_compat, 
				v.eternal_compat, 
				nil, 
				atlas,
				nil
			)
			if joker.name == "Vanda" then
				joker.soul_pos = v.soul_pos;
			end
			if joker.name == "Baron Hans" then
				joker.no_pool_flag = "sir_hams_bacon"
			end
			if joker.name == "Bacon Hams" then
				joker.yes_pool_flag = "sir_hams_bacon"
			end
			
			local register_joker = true;
			--Disabled jokers
			if joker.name == "Double Down" or joker.name == "Hand Me Downs" then
				register_joker = false;
			end
			
			if joker.name == "Double Down" then
				if SMODS.Mods["VirtualizedMultiplayer"] and SMODS.Mods["VirtualizedMultiplayer"].can_load then --Disabled card for now
					joker.in_pool = function(self)
						return G.LOBBY.code and G.LOBBY.config.multiplayer_jokers
					end
				else
					register_joker = false;
				end
			end
			joker.loc_vars = v.loc_vars;
			joker.calc_dollar_bonus = v.calc_dollar_bonus;
			if register_joker then joker:register() end
		end
	end
	
	addJokersToPools(jokers, "a_sircmod");
	
    local calculate_jokerref = Card.calculate_joker;
    function Card:calculate_joker(context)

        local ret_val = calculate_jokerref(self, context);
            if self.ability.set == "Joker" and not self.debuff then

                if context.cardarea == G.jokers then
					if self.ability.name == "Vanda" and context.cardarea == G.jokers then
						if context.ending_shop and not context.repetition and not context.blueprint then
							local take_money = 0;
							if G.GAME.dollars < 0 then
								return ret_val;
							end
							
							if  G.GAME.dollars >= self.ability.extra.max_money_mod then
								take_money = self.ability.extra.max_money_mod;
							else
								take_money = G.GAME.dollars;
							end
							if take_money > 0 then
								self.ability.extra.current_Xmult = self.ability.extra.current_Xmult + (take_money * self.ability.extra.Xmult_mod)
								ease_dollars(-1 * take_money, true);
								
								card_eval_status_text(self, 'extra', nil, nil, nil, { message = localize("k_upgrade_ex"), colour = G.C.RED});
								play_sound("generic1");
							end
						end
					end
					if self.ability.name == "401k" and context.cardarea == G.jokers and not context.repetition and not context.blueprint then
						if context.selling_card then
							self.ability.extra_value = self.ability.extra_value + self.ability.extra.money_earned;
							self:set_cost();
							ease_dollars(-1 * self.ability.extra.money_earned);
							card_eval_status_text(self, 'extra', nil, nil, nil, { message = localize("k_val_up"), colour = G.C.MONEY});
						end
						if context.end_of_round then
							local temp_string = tostring(self.ability.extra.interest);
							local form_decimal = tonumber( (tonumber(string.sub(temp_string, 1, -3)) or 0) .. "." .. string.sub(temp_string, -2) );
							local new_sell_value = math.ceil((1 + form_decimal) * (self.sell_cost + self.ability.extra_value));
							self.ability.extra_value = new_sell_value - self.sell_cost;
							self:set_cost();
							card_eval_status_text(self, 'extra', nil, nil, nil, { message = localize("k_val_up"), colour = G.C.MONEY});
						end
					end
					if self.ability.name == 'Chrysopoeia Crisis' and context.before and context.cardarea == G.jokers and not context.blueprint then
                        local transmuted = false
                        for k, v in ipairs(context.scoring_hand) do
                            if v.label == "Gold Card" then 
                                transmuted = true
								v:set_ability(G.P_CENTERS.m_steel, nil, true)
								self.ability.extra.mult = self.ability.extra.mult + self.ability.extra.mult_gained
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        v:juice_up()
                                        return true
                                    end
                                })) 
                            end
                        end
                        if transmuted then 
                            return {
                                message = 'Transmuted!',
                                colour = G.C.MONEY,
                                card = self
                            }
                        end
                    end
					--if self.ability.name == "Hand Me Downs" and not context.repetition and not context.blueprint then
						--set_cost()
					--	if (self.ability.set == 'Default' or (self.ability.set == 'Booster' and self.ability.name:find('Standard'))) and #find_joker('Hand Me Downs') > 0 then self.cost = 0 end
					--end
                end
            end
        return ret_val;
    end
	
	SMODS.Jokers.j_vanda.calculate = function(self, context)
        if context.joker_main and context.cardarea == G.jokers then
			
            if self.ability.extra.current_Xmult ~= 1 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = { self.ability.extra.current_Xmult }
                    },
                    Xmult_mod = self.ability.extra.current_Xmult,
                    card = self
                }
            end
        end
    end
	
	SMODS.Jokers.j_hans_baron.calculate = function(self, context)
        if context.end_of_round and context.cardarea == G.jokers and not context.repetition and context.game_over == false and not context.blueprint then
			local myrandom = pseudorandom(self.ability.name)
			sendDebugMessage(self.ability.name .. ":: Running " .. G.GAME.probabilities.normal .. " in " .. self.ability.extra.denominator .. " odds")
			sendDebugMessage(self.ability.name .. ":: " .. myrandom .. " < " .. G.GAME.probabilities.normal / self.ability.extra.denominator .. " = " .. tostring(myrandom < G.GAME.probabilities.normal / self.ability.extra.denominator))
			if myrandom < G.GAME.probabilities.normal / self.ability.extra.denominator then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						self.T.r = -0.2
						self:juice_up(0.3, 0.4)
						self.states.drag.is = true
						self.children.center.pinch.x = true
						-- This part destroys the card.
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0.3,
							blockable = false,
							func = function()
								G.jokers:remove_card(self)
								self:remove()
								self = nil
								return true;
							end
						}))
						return true
					end
				}))
				-- Sets the pool flag to true, meaning Baron Hans doesn't spawn, and Bacon Hams does.
				G.GAME.pool_flags.sir_hams_bacon = true
				return {
					message = localize('k_extinct_ex')
				}
			else
				return {
					message = localize('k_safe_ex')
				}
			end
		
        end
    end
	
	--Same as Hans Baron
	SMODS.Jokers.j_hams_bacon.calculate = function(self, context)
        if context.end_of_round and context.cardarea == G.jokers and not context.repetition and context.game_over == false and not context.blueprint then
			local myrandom = pseudorandom(self.ability.name)
			sendDebugMessage(self.ability.name .. ":: Running " .. G.GAME.probabilities.normal .. " in " .. self.ability.extra.denominator .. " odds")
			sendDebugMessage(self.ability.name .. ":: " .. myrandom .. " < " .. G.GAME.probabilities.normal / self.ability.extra.denominator .. " = " .. (myrandom < G.GAME.probabilities.normal / self.ability.extra.denominator))
			if pseudorandom(self.ability.name) < G.GAME.probabilities.normal / self.ability.extra.denominator then
				G.E_MANAGER:add_event(Event({
					func = function()
						play_sound('tarot1')
						self.T.r = -0.2
						self:juice_up(0.3, 0.4)
						self.states.drag.is = true
						self.children.center.pinch.x = true
						-- This part destroys the card.
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							delay = 0.3,
							blockable = false,
							func = function()
								G.jokers:remove_card(self)
								self:remove()
								self = nil
								return true;
							end
						}))
						return true
					end
				}))
				-- Sets the pool flag to true, meaning Baron Hans doesn't spawn, and Bacon Hams does.
				G.GAME.pool_flags.sir_hams_bacon = true
				return {
					message = localize('k_extinct_ex')
				}
			else
				return {
					message = localize('k_safe_ex')
				}
			end
		
        end
    end
	
	SMODS.Jokers.j_chrysopoeia_crisis.calculate = function(self, context)
        if context.joker_main and context.cardarea == G.jokers then
            if self.ability.extra.mult ~= 0 then
                return {
                    message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = { self.ability.extra.mult }
                    },
                    mult_mod = self.ability.extra.mult,
                    card = self
                }
            end
        end
    end
	
	
	
	local set_cost_ref = Card.set_cost
	function Card.set_cost(self)
		set_cost_ref(self)
		if (self.ability.set == 'Default' or (self.ability.set == 'Booster' and self.ability.name:find('Standard'))) and #find_joker('Hand Me Downs') > 0 then
			self.cost = 0
		end
		--if(self.config.center.key == "j_hand_me_downs") then
			
	end
	
	--[[local add_to_deck_ref = Card.add_to_deck
	function Card.add_to_deck(self, from_debuff)
		--add_to_deck(self, from_debuff)
		
		if self.ability.name == 'Hand Me Downs' then 
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        end
	end--]]
	
	--[[local remove_from_deck_ref = Card.remove_from_deck
	function Card.remove_from_deck(self, from_debuff)
		--remove_from_deck(self, from_debuff)
		if self.ability.name == 'Hand Me Downs' then 
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        end
	end--]]
	
	
    local generate_UIBox_ability_tableref = Card.generate_UIBox_ability_table
    function Card.generate_UIBox_ability_table(self)
        local card_type, hide_desc = self.ability.set or "None", nil
        local loc_vars = nil
        local main_start, main_end = nil, nil
        local no_badge = nil

        if self.config.center.unlocked == false and not self.bypass_lock then
            -- For everything that is locked
        elseif card_type == 'Undiscovered' and not self.bypass_discovery_ui then
            -- Any Joker or tarot/planet/voucher that is not yet discovered
        elseif self.debuff then
            -- If the card is a debuff
        elseif card_type == 'Default' or card_type == 'Enhanced' then
            -- For Default or Enhanced cards
        elseif self.ability.set == 'Joker' then
            --local customJoker = true
			local customJoker = false

            --[[if self.ability.name == 'Vanda' then
                -- Set the localization variables
                loc_vars = {self.ability.extra.money_mod, self.ability.extra.Xmult_mod, self.ability.extra.max_money_mod, self.ability.extra.current_Xmult}
            elseif self.ability.name == '401k' then
				loc_vars = {self.ability.extra.money_earned, self.ability.extra.interest}
			elseif self.ability.name == 'Sir Hans Baron' then
				loc_vars = {self.ability.extra.money_earned, self.ability.extra.numerator, self.ability.extra.denominator}
			elseif self.ability.name == 'Sir Hams Bacon' then
				loc_vars = {self.ability.extra.money_earned, self.ability.extra.extra_money_earned_amount, self.ability.extra.extra_money_earned_per, self.ability.extra.numerator, self.ability.extra.denominator}
			else
                customJoker = false
            end--]]

            if customJoker then
                local badges = {}
                if (card_type ~= 'Locked' and card_type ~= 'Undiscovered' and card_type ~= 'Default') or self.debuff then
                    badges.card_type = card_type
                end
                if self.ability.set == 'Joker' and self.bypass_discovery_ui and (not no_badge) then
                    badges.force_rarity = true
                end
                if self.edition then
                    if self.edition.type == 'negative' and self.ability.consumeable then
                        badges[#badges + 1] = 'negative_consumable'
                    else
                        badges[#badges + 1] = (self.edition.type == 'holo' and 'holographic' or self.edition.type)
                    end
                end
                if self.seal then
                    badges[#badges + 1] = string.lower(self.seal) .. '_seal'
                end
                if self.ability.eternal then
                    badges[#badges + 1] = 'eternal'
                end
                if self.pinned then
                    badges[#badges + 1] = 'pinned_left'
                end

                if self.sticker then
                    loc_vars = loc_vars or {}
                    loc_vars.sticker = self.sticker
                end

                return generate_card_ui(self.config.center, nil, loc_vars, card_type, badges, hide_desc, main_start,
                    main_end)
            end
        end

        return generate_UIBox_ability_tableref(self)
    end

--end


----------------------------------------------
------------MOD CODE END----------------------
