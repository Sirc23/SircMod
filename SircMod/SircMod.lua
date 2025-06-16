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

SMODS.Atlas({
	key = "SircMod",
	path = "sircmod_atlas.png",
	px = 71,
	py = 95,
})

SircMod = SMODS.current_mod
CFG = SircMod.config


SMODS.current_mod.config_tab = function()
	local scale = 0.75
	return {n=G.UIT.ROOT, config = {align = "cm", minh = G.ROOM.T.h*0.25, padding = 0.0, r = 0.1, colour = G.C.GREY}, nodes = {
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n=G.UIT.T, config={ align = "cm", text = "Restart the game for changes to take effect", scale = 0.32, juice = true, colour = G.C.MULT}}
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Baron Hans'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_baron_hans" },
			}},
		}},
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n=G.UIT.T, config={ align = "cm", text = "  ...and 'Bacon Hams'", scale = 0.25, colour = G.C.UI.TEXT_LIGHT}}
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Chrysopoeia Crisis'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_crisis" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker '401k'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_401k" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Vanda'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_vanda" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Awatsu'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_awatsu" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Coin on a String'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_coin" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Order Form'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_order_form" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Grindstone'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_grindstone" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Downplayer'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_downplayer" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Enable Joker 'Blank Slate'", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "e_blank_slate" },
			}},
		}},
		
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0.25, padding = 0.02 }, nodes = {
				create_toggle{ col = true, label = "Lock 'Downplayer' to Multiplayer", scale = scale, w = 0, shadow = true, ref_table = CFG, ref_value = "downplayer_mp_only" },
			}},
		}},
		{n = G.UIT.R, config = { padding = 0.02 }, nodes = {
			{n=G.UIT.T, config={ align = "cm", text = " If true, Downplayer will only appear in Multiplayer runs", scale = 0.25, colour = G.C.UI.TEXT_LIGHT}}
		}},
	}}
	end


function new_loc_txt(arg)
	local a = {}
	for i,v in ipairs(arg) do
		if v ~= nil and v ~= "{C:red,s:1.1}{}" then
			table.insert(a, v)
		end
	end
	return a
end

		SMODS.Joker { --Hans Baron
			key = "hans_baron",
			loc_txt = {
				name = "Baron Hans",
				text = new_loc_txt({
					"Earn {C:money}$#1#{} at",
					"end of round",
					"{C:green}#3# in #2#{} chance this",
					"card is destroyed",
					"at end of round",
					"{C:red,s:1.1}" .. (not CFG.e_baron_hans and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					money_earned = 4,
					denominator = 6
				}
			},
			atlas = 'SircMod',
			pos = {x = 3,y = 0},
			rarity = 1,
			cost = 6,
			no_pool_flag = 'sir_hams_bacon',
			in_pool = function(self)
				return CFG.e_baron_hans and (#SMODS.find_card("j_sirc_hans_baron", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
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
			end,
			
			calculate = function(self, card, context)
				if context.end_of_round and context.cardarea == G.jokers and not context.repetition and not context.game_over and not context.blueprint then
					local myrandom = pseudorandom(card.ability.name)
					if myrandom < G.GAME.probabilities.normal / card.ability.extra.denominator then
						G.E_MANAGER:add_event(Event({
							func = function()
								play_sound('tarot1')
								card.T.r = -0.2
								card:juice_up(0.3, 0.4)
								card.states.drag.is = true
								card.children.center.pinch.x = true
								-- This part destroys the card.
								G.E_MANAGER:add_event(Event({
									trigger = 'after',
									delay = 0.3,
									blockable = false,
									func = function()
										G.jokers:remove_card(card)
										card:remove()
										card = nil
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
		}
		SMODS.Joker { --Hams Bacon
			key = "hams_bacon",
			loc_txt = {
				name = "Bacon Hams",
				text = new_loc_txt({
					"Earn {C:money}$#2# per $#3#{}",
					"owned + {C:money}$#1#{} at end of round",
					"{C:green}#5# in #4#{} chance this",
					"card is destroyed",
					"at end of round",
					"{C:red,s:1.1}" .. (not CFG.e_baron_hans and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					money_earned = 4,
					extra_money_earned_amount = 2,
					extra_money_earned_per = 10,
					denominator = 1000
				}
			},
			atlas = 'SircMod',
			pos = {x = 4,y = 0},
			rarity = 1,
			cost = 5,
			yes_pool_flag = 'sir_hams_bacon',
			in_pool = function(self)
				return CFG.e_baron_hans and (#SMODS.find_card("j_sirc_hams_bacon", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
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
			end,
			
			calculate = function(self, card, context)
				
				if context.end_of_round and context.cardarea == G.jokers and not context.repetition and not context.game_over and not context.blueprint then
					local myrandom = pseudorandom(self.ability.name)
					if pseudorandom(card.ability.name) < G.GAME.probabilities.normal / card.ability.extra.denominator then
						G.E_MANAGER:add_event(Event({
							func = function()
								play_sound('tarot1')
								card.T.r = -0.2
								card:juice_up(0.3, 0.4)
								card.states.drag.is = true
								card.children.center.pinch.x = true
								-- This part destroys the card.
								G.E_MANAGER:add_event(Event({
									trigger = 'after',
									delay = 0.3,
									blockable = false,
									func = function()
										G.jokers:remove_card(card)
										card:remove()
										card = nil
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
		}
		SMODS.Joker { --Chrysopoeia Crisis
			key = "chrysopoeia_crisis",
			loc_txt = {
				name = "Chrysopoeia Crisis",
				text = new_loc_txt({
					"This Joker gains {C:mult}+#1#{} Mult",
					"whenever it converts a scored",
					"{C:attention}Gold{} card to a {C:attention}Steel{} card",
					"or vice versa",
					"{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult){}",
					"{C:red,s:1.1}" .. (not CFG.e_crisis and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					mult_gained = 4,
					mult = 0
				}
			},
			atlas = 'SircMod',
			pos = {x = 5,y = 0},
			rarity = 2,
			cost = 7,
			
			in_pool = function(self)
				return CFG.e_crisis and (#SMODS.find_card("j_sirc_chrysopoeia_crisis", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.mult_gained, card.ability.extra.mult} }
			end,
			
			calculate = function(self, card, context)
				
				if context.before and context.cardarea == G.jokers and not context.blueprint then
					local transmuted = false
					for k, v in ipairs(context.scoring_hand) do
						--if v.label == "Gold Card" then 
						if SMODS.has_enhancement(v, 'm_gold') then
							transmuted = true
							v:set_ability(G.P_CENTERS.m_steel, nil, true)
							card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gained
							G.E_MANAGER:add_event(Event({
								func = function()
									v:juice_up()
									return true
								end
							}))
						elseif SMODS.has_enhancement(v, 'm_steel') then
							transmuted = true
							v:set_ability(G.P_CENTERS.m_gold, nil, true)
							card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gained
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
							card = card
						}
					end
				end
				if context.joker_main and context.cardarea == G.jokers then
					if card.ability.extra.mult ~= 0 then
						return {
							message = localize {
								type = 'variable',
								key = 'a_mult',
								vars = { card.ability.extra.mult }
							},
							mult_mod = card.ability.extra.mult,
							card = card
						}
					end
				end
			end
		}
		SMODS.Joker { --401k
			key = "401k",
			loc_txt = {
				name = "401k",
				text = new_loc_txt({
					"Gains {C:money}$#1#{} of {C:attention}sell value{}",
					"for every card {C:attention}sold{}",
					"{C:attention}Sell value{} increases by",
					"{C:attention}#2#%{} at end of round",
					"{C:red,s:1.1}" .. (not CFG.e_401k and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					money_earned = 1,
					interest = 10
				}
			},
			atlas = 'SircMod',
			pos = {x = 2,y = 0},
			rarity = 3,
			cost = 8,
			
			in_pool = function(self)
				return CFG.e_401k and (#SMODS.find_card("j_sirc_401k", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.money_earned, card.ability.extra.interest} }
			end,
			
			calculate = function(self, card, context)
				if context.cardarea == G.jokers and not context.repetition and not context.blueprint then
					if context.selling_card then
						card.ability.extra_value = card.ability.extra_value + card.ability.extra.money_earned;
						card:set_cost();
						--ease_dollars(-1 * card.ability.extra.money_earned);
						card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize("k_val_up"), colour = G.C.MONEY});
					end
					if context.end_of_round then
						local temp_string = tostring(card.ability.extra.interest);
						local form_decimal = tonumber( (tonumber(string.sub(temp_string, 1, -3)) or 0) .. "." .. string.sub(temp_string, -2) );
						local new_sell_value = math.ceil((1 + form_decimal) * (card.sell_cost + card.ability.extra_value));
						card.ability.extra_value = new_sell_value - card.sell_cost;
						card:set_cost();
						card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize("k_val_up"), colour = G.C.MONEY});
					end
				end
			end
		}
		SMODS.Joker { --Vanda
			key = "vanda",
			loc_txt = {
				name = "Vanda",
				text = new_loc_txt({
					"Converts {C:money}$#1#{} into {X:mult,C:white}X#2#{} Mult",
					"at the end of the {C:money}shop{}",
					"(up to {C:money}$#3#{})",
					"{C:inactive}(Currently {X:mult,C:white} X#4# {C:inactive} Mult){}",
					"{C:red,s:1.1}" .. (not CFG.e_vanda and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					money_mod = 1,
					Xmult_mod = .1,
					max_money_mod = 10,
					current_Xmult = 1
				}
			},
			atlas = 'SircMod',
			pos = {x = 0,y = 0},
			soul_pos = {x = 1, y = 0},
			rarity = 4,
			cost = 20,
			
			in_pool = function(self)
				return CFG.e_vanda and (#SMODS.find_card("j_sirc_vanda", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.money_mod, card.ability.extra.Xmult_mod, card.ability.extra.max_money_mod, card.ability.extra.current_Xmult} }
			end,
			
			calculate = function(self, card, context)
				if context.cardarea == G.jokers and context.ending_shop and not context.repetition and not context.blueprint then
					local take_money = 0;
					if G.GAME.dollars < 0 then
						return ret_val;
					end
					
					if  G.GAME.dollars >= card.ability.extra.max_money_mod then
						take_money = card.ability.extra.max_money_mod;
					else
						take_money = G.GAME.dollars;
					end
					if take_money > 0 then
						card.ability.extra.current_Xmult = card.ability.extra.current_Xmult + (take_money * card.ability.extra.Xmult_mod)
						ease_dollars(-1 * take_money, true);
						
						card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize("k_upgrade_ex"), colour = G.C.RED});
						play_sound("generic1");
					end
				end
				
				if context.joker_main and context.cardarea == G.jokers then
					if card.ability.extra.current_Xmult ~= 1 then
						return {
							message = localize {
								type = 'variable',
								key = 'a_xmult',
								vars = { card.ability.extra.current_Xmult }
							},
							Xmult_mod = card.ability.extra.current_Xmult,
							card = card
						}
					end
				end
			end
		}
		SMODS.Joker { --Awatsu
			key = "awatsu",
			loc_txt = {
				name = "World Serpent",
				text = new_loc_txt({
					"This Joker gains {C:chips}Chips{}",
					"equal to chips boosted by",
					"{C:planet}Planet{} cards on the",
					"{C:attention}final hand{} of round",
					"{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips){}",
					"{C:red,s:1.1}" .. (not CFG.e_awatsu and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					chips = 0
				}
			},
			atlas = 'SircMod',
			pos = {x = 3,y = 1},
			rarity = 1,
			cost = 4,
			
			in_pool = function(self)
				return CFG.e_awatsu and (#SMODS.find_card("j_sirc_awatsu", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.chips} }
			end,
			
			calculate = function(self, card, context)
				local can_consume = not context.end_of_round and G.GAME.chips < G.GAME.blind.chips and context.cardarea == G.jokers and not context.blueprint and G.GAME.current_round.hands_left == 1
				
				if (context.after or context.first_hand_drawn) and can_consume then
					local eval = function(card) return (G.GAME.current_round.hands_left == 1 and not card.debuff and not context.end_of_round and G.GAME.chips < G.GAME.blind.chips) end
					juice_card_until(card, eval, true)
				end
				if
				context.using_consumeable and
				context.consumeable.ability.set == "Planet" and 
				can_consume
				then
					card.ability.extra.chips = card.ability.extra.chips + G.GAME.hands[context.consumeable.ability.consumeable.hand_type].l_chips
					
					return
					{
						message = localize('k_upgrade_ex'),
						colour = G.C.CHIPS,
						message_card = card
					}
				end
				if context.joker_main then
					card.ability.extra.last_hand = context.scoring_name
					return
					{
						chips = card.ability.extra.chips
					}
				end
			end
		}
		SMODS.Joker { --Coin on a String
			key = "coin_on_a_string",
			loc_txt = {
				name = "Coin on a String",
				text = new_loc_txt({
					"Once per Blind, this Joker",
					"will {C:gold}return as-is{} when",
					"sold or destroyed",
					"{C:inactive}(Sellable: {C:green}#1#{C:inactive})",
					"{C:red,s:1.1}" .. (not CFG.e_coin and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				is_active = 'Yes'
			},
			atlas = 'SircMod',
			pos = {x = 4,y = 1},
			rarity = 1,
			cost = 8,
			
			in_pool = function(self)
				return CFG.e_coin and (#SMODS.find_card("j_sirc_coin_on_a_string", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.is_active} }
			end,
			
			remove_from_deck = function(self, card, from_debuff)
				if(card.ability.is_active == 'Yes' and G.STAGE == G.STAGES.RUN and not card.debuff and not from_debuff) then
					card.ability.is_active = 'No'
					local new_card = copy_card(card, nil, nil, nil, nil)
					new_card:add_to_deck()
					G.jokers:emplace(new_card)
					card_eval_status_text(new_card, 'extra', nil, nil, nil, {message = 'Yoinked!'})
				end
			end,
			
			calculate = function(self, card, context)
				if context.buying_card and context.cardarea == G.jokers and context.card.ability.name == 'Coin on a String' and context.card.ability.is_active == 'Yes' then
					local eval = function(card) return (card.ability.is_active == 'Yes' and not card.debuff) end
					juice_card_until(card, eval, true)
				end
				if context.setting_blind and context.cardarea == G.jokers and not context.blueprint and card.ability.is_active == 'No' then
					card.ability.is_active = 'Yes'
					local eval = function(card) return (card.ability.is_active == 'Yes' and not card.debuff) end
					juice_card_until(card, eval, true)
					return {
							extra = {message = localize('k_reset'), colour = G.C.MONEY},
							colour = G.C.MONEY,
							card = card
						}
				end
			end
		}
		SMODS.Joker { --Order Form
			key = "order_form",
			loc_txt = {
				name = "Order Form",
				text = new_loc_txt({
					"Sell this card to {C:attention}create{}",
					"a random Joker based on",
					"{C:attenion}number of rounds passed{}",
					"{C:inactive,s:0.8}(Odds: {X:common,s:0.8}#1#%{C:inactive,s:0.8}, {X:uncommon,s:0.8}#2#%{C:inactive,s:0.8}, {X:rare,s:0.8}#3#%{C:inactive,s:0.8}, {X:legendary,s:0.8}#4#%{C:inactive,s:0.8})",
					"{C:red,s:1.1}" .. (not CFG.e_order_form and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					common_odds = 50,
					uncommon_odds = 50,
					rare_odds = 0,
					legendary_odds = 0,
					rounds_passed = 0,
					min_percent = 0.6,
					max_percent = 0.8,
					rate = 0.03,
					legendary_threshhold = 0.94
				}
			},
			atlas = 'SircMod',
			pos = {x = 5,y = 1},
			rarity = 1,
			cost = 5,
			
			in_pool = function(self)
				return CFG.e_order_form and (#SMODS.find_card("j_sirc_order_form", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.common_odds, card.ability.extra.uncommon_odds, card.ability.extra.rare_odds, card.ability.extra.legendary_odds} }
			end,
			
			calculate = function(self, card, context)
				local function sircmod_round(n)
					return math.floor(n + 0.5)
				end
				if context.end_of_round and context.cardarea == G.jokers and not context.repetition and context.game_over == false and not context.blueprint then
					--Upgrade odds
					card.ability.extra.rounds_passed = card.ability.extra.rounds_passed + 1
					card.ability.extra.min_percent = 0.6 + card.ability.extra.rate * card.ability.extra.rounds_passed
					card.ability.extra.max_percent = 0.8 + card.ability.extra.rate * card.ability.extra.rounds_passed
					
					local my_min = card.ability.extra.min_percent
					local my_max = card.ability.extra.max_percent
					
					--Legendary threshhold is not linear, but pushes a little further back each round (slower than the rate at which the probabilities go up)
					--This way, the odds of getting a legendary don't shoot up so fast
					card.ability.extra.legendary_threshhold = math.floor((0.94 + 0.038 * math.sqrt(card.ability.extra.rounds_passed * 1.3)) * 100) / 100
					local range = my_max - my_min
					
					local cumulative_odds = 0
					card.ability.extra.common_odds = sircmod_round(math.min(100, math.max(0, (0.7 - my_min) / range * 100)))
					cumulative_odds = cumulative_odds + card.ability.extra.common_odds
					
					card.ability.extra.uncommon_odds = sircmod_round(math.min(100, math.max(0, (0.95 - my_min) / range * 100)) - cumulative_odds)
					cumulative_odds = cumulative_odds + card.ability.extra.uncommon_odds
					
					card.ability.extra.rare_odds = sircmod_round(math.min(100, math.max(0, (card.ability.extra.legendary_threshhold - my_min) / range * 100)) - cumulative_odds)
					cumulative_odds = cumulative_odds + card.ability.extra.rare_odds
					
					card.ability.extra.legendary_odds = sircmod_round(math.min(100, math.max(0, (200 - my_min) / range * 100)) - cumulative_odds)
					
					return {
							extra = {message = localize('k_upgrade_ex'), colour = G.C.MONEY},
							colour = G.C.MONEY,
							card = card
						}
				end
				if context.selling_card and context.cardarea == G.jokers and not context.blueprint and context.card == card and context.card.ability.set == 'Joker' and #G.jokers.cards <= G.jokers.config.card_limit then
					--Create random Joker
					local random_result = card.ability.extra.min_percent + pseudorandom(card.ability.name) * (card.ability.extra.max_percent - card.ability.extra.min_percent)
					--local random_result = math.random(math.floor(card.ability.extra.min_percent * 100), math.floor(card.ability.extra.max_percent * 100)) / 100
					if random_result >= card.ability.extra.legendary_threshhold then
						local new_card = SMODS.create_card({set = 'Joker', area = G.jokers,skip_materialize = false, legendary = true, no_edition = true})
						new_card:add_to_deck()
						G.jokers:emplace(new_card)
					else
						local new_card = SMODS.create_card({set = 'Joker', area = G.jokers, skip_materialize = false, rarity = math.min(1, random_result), no_edition = true})
						new_card:add_to_deck()
						G.jokers:emplace(new_card)
					end
				end
			end
		}

		SMODS.Joker { --Grindstone
			key = "grindstone",
			loc_txt = {
				name = "The Grindstone",
				text = new_loc_txt({
					"Played cards permanently",
					"gain {C:mult}+#1#{} Mult when scored",
					"an additional time",
					"{C:red,s:1.1}" .. (not CFG.e_grindstone and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
					mult_gained = 1
				}
			},
			atlas = 'SircMod',
			pos = {x = 0,y = 1},
			rarity = 2,
			cost = 6,
			
			in_pool = function(self)
				return CFG.e_grindstone and (#SMODS.find_card("j_sirc_grindstone", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.mult_gained} }
			end,
			
			calculate = function(self, card, context)
				if context.individual and context.cardarea == G.play then
					context.other_card.grindstone = context.other_card.grindstone or {}
					context.other_card.grindstone_in_list = false
					
					for j = 1, #context.other_card.grindstone do
						if context.other_card.grindstone[j] == tostring((not context.blueprint and card) or (context.blueprint and context.blueprint_card)) then
							context.other_card.grindstone_in_list = true
							break
						end
					end
					if not context.other_card.grindstone_in_list then
						context.other_card.grindstone[#context.other_card.grindstone + 1] = tostring((not context.blueprint and card) or (context.blueprint and context.blueprint_card))
					else
						context.other_card.ability.perma_mult = context.other_card.ability.perma_mult or 0
						context.other_card.ability.perma_mult = context.other_card.ability.perma_mult + card.ability.extra.mult_gained
						
						return {
							extra = {message = localize('k_upgrade_ex'), colour = G.C.MULT},
							colour = G.C.MULT,
							card = card
						}
					end
				end
				if context.final_scoring_step and not context.blueprint then
					for j = 1, #G.play.cards do
						G.play.cards[j].grindstone = {}
					end
				end
			end
		}
		SMODS.Joker { --Downplayer
			key = "downplayer",
			loc_txt = {
				name = "Downplayer",
				text = new_loc_txt({
				
					"This Joker gains {X:mult,C:white}X#1#{} Mult",
					"each time a poker hand",
					"is downgraded",
					"{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult){}",
					"{C:red,s:1.1}" .. (not CFG.e_downplayer and "Config: Not in Pool" or (CFG.downplayer_mp_only and "Config: Multiplayer Only" or "")) .. "{}"
				})
			},
			config = {
				extra = {
					mult_gained = 0.75,
					mult = 1
				}
			},
			atlas = 'SircMod',
			pos = {x = 2,y = 1},
			rarity = 2,
			cost = 7,
			
			in_pool = function(self)
				return CFG.e_downplayer and (not CFG.downplayer_mp_only or (SMODS.Mods["VirtualizedMultiplayer"] and SMODS.Mods["VirtualizedMultiplayer"].can_load and MP.LOBBY.code and MP.LOBBY.config.multiplayer_jokers)) and (#SMODS.find_card("j_sirc_downplayer", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = true,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {card.ability.extra.mult_gained, card.ability.extra.mult} }
			end
		}
		SMODS.Joker { --Blank Slate
			key = "blank_slate",
			loc_txt = {
				name = "Blank Slate",
				text = new_loc_txt({
					"Stone cards act as the",
					"{C:attention}suit and rank{} that creates",
					"the {C:attention}highest scoring hand{}",
					"{C:red,s:1.1}" .. (not CFG.e_blank_slate and "Config: Not in Pool" or "") .. "{}"
				})
			},
			config = {
				extra = {
				}
			},
			atlas = 'SircMod',
			pos = {x = 1,y = 1},
			rarity = 3,
			cost = 8,
			
			in_pool = function(self)
				return CFG.e_blank_slate and (#SMODS.find_card("j_sirc_blank_slate", true) == 0 or #SMODS.find_card("j_ring_master") > 0)
			end,
			
			unlocked = true,
			discovered = true,
			blueprint_compat = false,
			eternal_compat = true,
			cost_mult = 1.0,
			loc_vars = function(self, info_queue, card)
				return {vars = {} }
			end
		}

	
	--Blank Slate code below--
	--Here be dragons--
	
	--https://leafo.net/guides/function-cloning-in-lua.html
	local function clone_function(fn)
		local dumped = string.dump(fn)
		local cloned = loadstring(dumped)
		local i = 1
		while true do
			local name = debug.getupvalue(fn, i)
			if not name then
				break
			end
			debug.upvaluejoin(cloned, i, fn, i)
			i = i + 1
		end
		return cloned
	end
	
	local function get_suits()
		ret = {}
		for _, i in pairs(SMODS.Suits) do
			table.insert(ret, i.key)
		end
		return ret
	end
	
	local function get_rank_values()
		ret = {}
		for _, i in pairs(SMODS.Ranks) do
			table.insert(ret, i.key)
		end
		return ret
	end
	
	local function get_rank_nominal(this_key)
		return SMODS.Ranks[this_key].nominal or nil
	end
	
	local function get_rank_id(this_key)
		return SMODS.Ranks[this_key].id or nil
	end
	
	local function blank_slate_store_card_data(card)
		card.blank_slate = {}
		card.blank_slate.id = card.base.id
		card.blank_slate.nominal = card.base.nominal
		card.blank_slate.suit = card.base.suit
		card.blank_slate.original_value = card.base.original_value
		card.blank_slate.value = card.base.value
		card.blank_slate.effect = card.ability.effect 
		card.blank_slate.config_value = card.config.card.value
		card.blank_slate.config_suit = card.config.card.suit
		card.blank_slate.config_name = card.config.card.name
		card.blank_slate_revert = true
	end
	
	local function blank_slate_set_card(card, suit, rank)
		card.base.suit = suit
		card.base.value = rank
		card.base.id = get_rank_id(rank) --arg2
		card.base.nominal = get_rank_nominal(rank) 
		card.ability.effect = "Base"
		
		card.base.original_value = card.base.value
		card:set_ability(G.P_CENTERS.c_base, nil, false)
		card.config.card.value = card.base.value
		card.config.card.suit = card.base.suit
		card.config.card.name = card.config.card.value .. " of " .. card.config.card.suit
	end
	
	local function blank_slate_revert_card_data(card)
		card.base.id = card.blank_slate.id
		card.base.nominal = card.blank_slate.nominal
		card.base.suit = card.blank_slate.suit
		card.base.original_value = card.blank_slate.original_value
		card.base.value = card.blank_slate.value
		card.ability.effect = card.blank_slate.effect
		card:set_ability(G.P_CENTERS.m_stone, nil, false)
		card.config.card.value = card.blank_slate.config_value
		card.config.card.suit = card.blank_slate.config_suit
		card.config.card.name = card.blank_slate.config_name
		card.blank_slate_revert = false
	end
	
	local function blank_slate_straight_check(cards, stone_card_count, four_fingers, shortcut)
		
		local straight_length = 5
		if four_fingers then straight_length = 4 end
		--sendDebugMessage("Beginning straight check: " .. tostring(four_fingers))
		--sendDebugMessage("\tStraight length: " .. tostring(#cards + stone_card_count) .. " < " .. tostring(straight_length))
		if (#cards + stone_card_count) < straight_length then return false end
		
		local gap_power = 0
		if shortcut then gap_power = 1 end
		
		--Create an array from cards in which you can insert stone cards
		--The algorithm requires iterating over stone cards, and stone cards
		--cannot exist in cards because it is unique_ranks, which only contains
		--actual cards. Adding stone cards to unique_ranks means they do not get
		--allocated later down the line. EDIT: That sounds schitzophrenic as hell
		local temp_cards = {}
		for i = 1, #cards do
			table.insert(temp_cards, {rank = cards[i].rank})
		end
		cards = temp_cards
		
		--Sort cards by smallest rank first
		table.sort(cards, function(a, b) return get_rank_id(a.rank) < get_rank_id(b.rank) end)
		local allocated_ranks = {}
		--Determine rank gap between non-stone cards
		for i = 1, #cards do
			local next_index = i + 1
			if i == #cards then next_index = 1 end
			
			local current_gap = 0
			local current_next = SMODS.Ranks[cards[i].rank].next[1] or nil
			while current_gap < 15 and current_next ~= nil do
				if current_next == cards[next_index].rank then
					cards[i].gap = current_gap
					cards[i].next_card = current_next
					--We're about to sort things again so we may need this
					break
				end
				current_gap = current_gap + 1
				current_next = SMODS.Ranks[current_next].next[1] or nil
			end
			--We should expect to always break out of the loop because the next card is found; if not, something's gone wrong and a straight cannot be built
			if not (current_gap < 15 and current_next ~= nil) then
				sendDebugMessage("\tTried to check if hand is straight, but couldn't find next rank for a card... maybe some mod is adding extra ranks?")
				return false
			end
			
		end
		--Now sort based off of smallest gap size first. If there's a tie then sort by smallest rank first
		table.sort(cards, function(a, b) return (a.gap < b.gap) or (a.gap == b.gap and get_rank_id(a.rank) < get_rank_id(b.rank)) end)
		
		--Assume a straight is valid, and seek to disprove that
		local i = 1
		while i <= #cards do
			--sendDebugMessage("\tCard: " .. cards[i].rank .. " -> " .. cards[i].next_card .. " (" .. cards[i].gap .. ")")
			if i < straight_length and cards[i].gap > gap_power then
				if stone_card_count > 0 then
					local skip_number = math.min(cards[i].gap - 1, gap_power)
					local next_in_line = SMODS.Ranks[cards[i].rank].next[1]
					if skip_number == 1 then next_in_line = SMODS.Ranks[next_in_line].next[1] end
					sendDebugMessage(tostring(i) .. " - " .. cards[i].rank .. " - \tStraight check: Allocated a rank: " .. next_in_line)
					table.insert(allocated_ranks, {rank = next_in_line, stone_cards = 1})
					table.insert(cards, i + 1, {rank = next_in_line, gap = cards[i].gap - (1 + skip_number), next_card = cards[i].next_card})
					stone_card_count = stone_card_count - 1
					cards[i].gap = skip_number
					cards[i].next_card = next_in_line
				elseif stone_card_count == 0 then
					sendDebugMessage("@@@@===GAPS===@@@@: Failed on card " .. tostring(i))
					return false
				end
			else
				sendDebugMessage(tostring(i) .. " - " .. cards[i].rank .. " - No need to allocate")
			end
			i = i + 1
		end
		return allocated_ranks
	end
	
	G.blank_slate_hand_info = {
		{hand = 'High Card', flushes = -1, ranks = {1}, cards_min = 1, tiebreaker = 1, straights = false},
		{hand = 'Pair', flushes = -1, ranks = {2}, cards_min = 2, tiebreaker = 2, straights = false},
		{hand = 'Two Pair', flushes = -1, ranks = {2,2}, cards_min = 4, tiebreaker = 4, straights = false},
		{hand = 'Three of a Kind', flushes = -1, ranks = {3}, cards_min = 3, tiebreaker = 3, straights = false},
		{hand = 'Straight', flushes = 0, ranks = {1,1,1,1,1}, cards_min = 5, tiebreaker = 11, straights = true},
		{hand = 'Flush', flushes = 1, ranks = 3, cards_min = 5, tiebreaker = 10, straights = false},
		{hand = 'Full House', flushes = 0, ranks = {3,2}, cards_min = 5, tiebreaker = 12, straights = false},
		{hand = 'Four of a Kind', flushes = -1, ranks = {4}, cards_min = 4, tiebreaker = 9, straights = false},
		{hand = 'Straight Flush', flushes = 1, ranks = {1,1,1,1,1}, cards_min = 5, tiebreaker = 13, straights = true},
		{hand = 'Five of a Kind', flushes = 0, ranks = {5}, cards_min = 5, tiebreaker = 14, straights = false},
		{hand = 'Flush House', flushes = 1, ranks = {3,2}, cards_min = 5, tiebreaker = 15, straights = false},
		{hand = 'Flush Five', flushes = 1, ranks = {5}, cards_min = 5, tiebreaker = 16, straights = false}
	}
	G.blank_slate_hand_info_four_fingers = copy_table(G.blank_slate_hand_info)
	table.insert(G.blank_slate_hand_info_four_fingers, {hand = 'Two Pair', flushes = 0, ranks = {2,2}, cards_min = 4, tiebreaker = 5, straights = false})
	table.insert(G.blank_slate_hand_info_four_fingers, {hand = 'Straight', flushes = 0, ranks = {1,1,1,1}, cards_min = 4, tiebreaker = 7, straights = true})
	table.insert(G.blank_slate_hand_info_four_fingers, {hand = 'Flush', flushes = 1, ranks = 2, cards_min = 4, tiebreaker = 6, straights = false})
	table.insert(G.blank_slate_hand_info_four_fingers, {hand = 'Straight Flush', flushes = 1, ranks = {1,1,1,1}, cards_min = 4, tiebreaker = 8, straights = true})
	
	local smod_get_poker_hand_info = clone_function(G.FUNCS.get_poker_hand_info)
	G.FUNCS.get_poker_hand_info = function(_cards)
		
		if #_cards == 0 then
			return smod_get_poker_hand_info(_cards)
		end
		
		local suits = get_suits()
		local ranks = get_rank_values()
		--local nominals = get_rank_nominals()
		
		local has_blank_slate = false
		local has_smeared_joker = false
		local has_four_fingers = false
		local has_shortcut = false
		--not not next(SMODS.find_card('j_shortcut'))
		for i = 1, #G.jokers.cards do
			if not G.jokers.cards[i].debuff then
				if G.jokers.cards[i].ability.set == 'Joker' then
					if G.jokers.cards[i].config.center.key == 'j_sirc_blank_slate' then
						has_blank_slate = true
					elseif G.jokers.cards[i].config.center.key == 'j_smeared' then
						has_smeared_joker = true
					elseif G.jokers.cards[i].config.center.key == 'j_four_fingers' then
						has_four_fingers = true
					elseif G.jokers.cards[i].config.center.key == 'j_shortcut' then
						has_shortcut = true
					end
				end
			end
		end
		
		local text, loc_disp_text, poker_hands, scoring_hand, disp_text = ""
		
		if has_blank_slate then
			local s_hand = {}
			local s_stone = {}
			local unique_suits = {}
			local unique_ranks = {}
			local num_stone_cards = 0
			local num_regular_cards = 0
			local num_wild_cards = 0
			
			--Figure out what cards we've got
			for i = 1, #_cards do
				--Stone cards are stored separately from everything else
				if SMODS.has_enhancement(_cards[i], 'm_stone') and not _cards[i].debuff then
					num_stone_cards = num_stone_cards + 1
					table.insert(s_stone, _cards[i])
					blank_slate_store_card_data(_cards[i])
				--Wild card enhancements have any suit, but are otherwise regular cards
				elseif SMODS.has_enhancement(_cards[i], 'm_wild') and not _cards[i].debuff then
					local this_rank = _cards[i].base.value
					num_wild_cards = num_wild_cards + 1
					num_regular_cards = num_regular_cards + 1
					table.insert(s_hand, {suit = 'any', rank = this_rank, card_ref = _cards[i]})
					
					--Add to the list of unique ranks
					local rank_exists = false
					for index, r in ipairs(unique_ranks) do
						if this_rank == r.rank then
							rank_exists = true
							unique_ranks[index].count = unique_ranks[index].count + 1
							break
						end
					end
					if not rank_exists then
						table.insert(unique_ranks, {rank = this_rank, count = 1})
					end
				elseif not SMODS.has_enhancement(_cards[i], 'm_stone') and not SMODS.has_enhancement(_cards[i], 'm_wild') then
					local this_suit = _cards[i].base.suit
					local this_rank = _cards[i].base.value
					--Smeared Joker effectively limits suits to 2
					if has_smeared_joker and this_suit == 'Diamonds' then this_suit = 'Hearts' end
					if has_smeared_joker and this_suit == 'Spades' then this_suit = 'Clubs' end
					table.insert(s_hand, {suit = this_suit, rank = this_rank, card_ref = _cards[i]})
					num_regular_cards = num_regular_cards + 1
					--Add to the list of unique suits
					local suit_exists = false
					for index, s in ipairs(unique_suits) do
						if this_suit == s.suit then
							suit_exists = true
							unique_suits[index].count = unique_suits[index].count + 1
							break
						end
					end
					if not suit_exists and not SMODS.has_enhancement(_cards[i], 'm_wild') then
						table.insert(unique_suits, {suit = this_suit, count = 1})
					end
					--Add to the list of unique ranks
					local rank_exists = false
					for index, r in ipairs(unique_ranks) do
						if this_rank == r.rank then
							rank_exists = true
							unique_ranks[index].count = unique_ranks[index].count + 1
							break
						end
					end
					if not rank_exists then
						table.insert(unique_ranks, {rank = this_rank, count = 1})
					end
				end
			end
			
			--Shortcut all this logic if there are no stone cards
			if num_stone_cards == 0 then
				text, loc_disp_text, poker_hands, scoring_hand, disp_text = smod_get_poker_hand_info(_cards)
				return text, loc_disp_text, poker_hands, scoring_hand, disp_text
			end
			
			--Sort unique ranks so that largest counts are first
			table.sort(unique_ranks, function(a,b) return a.count > b.count end)
			--Sort unique suits so that largest counts are first
			table.sort(unique_suits, function(a,b) return a.count > b.count end)
			
			--Grab the list of conditions needed to meet each hand
			local hands_list = nil
			if has_four_fingers then
				hands_list = G.blank_slate_hand_info_four_fingers
			else
				hands_list = G.blank_slate_hand_info
			end
			
			local valid_hands = {}
			sendDebugMessage("Variety:\n" .. tprint({num_regular_cards = num_regular_cards, num_stone_cards = num_stone_cards, size_unique_suits = #unique_suits, size_unique_ranks = #unique_ranks}))
			--Check each poker hand to see if we can make it, with wildcards
			for i = 1, #hands_list do
				--Check if the hand has enough cards to play the hand in the first place
				local matches_card_check = num_regular_cards + num_stone_cards >= hands_list[i].cards_min
				
				local passes = matches_card_check
				
				--Check if there are enough cards of the same suit to satisfy the hand
				local matches_suit_check = true
				
				if passes then
					if hands_list[i].flushes == 0 then
						for this_suit = 1, #unique_suits do
							if unique_suits[this_suit].count + num_wild_cards >= hands_list[i].cards_min then
								matches_suit_check = false
								break
							end
						end
					elseif hands_list[i].flushes == 1 then
						matches_suit_check = false
						for this_suit = 1, #unique_suits do
							if unique_suits[this_suit].count + num_wild_cards + num_stone_cards >= hands_list[i].cards_min then
								matches_suit_check = true
								break
							end
						end
					end
				end
				
				passes = passes and matches_suit_check
				
				--Check if the hand can be considered a straight
				--If there are wildcards, allocate ranks to them so that a straight can be formed
				local allocated_ranks = {}
				local stone_cards_remaining = num_stone_cards
				local matches_straight_check = true
				
				if passes then
					--If hand is not marked as straight, don't run it and check is true
					if hands_list[i].straights then
						allocated_ranks = blank_slate_straight_check(unique_ranks, num_stone_cards, has_four_fingers, has_shortcut)
						if type(allocated_ranks) == 'table' then
							
							sendDebugMessage("????===ALLOC===@@@@: " .. tprint(allocated_ranks))
							stone_cards_remaining = stone_cards_remaining - #allocated_ranks
						else
							matches_straight_check = false
							allocated_ranks = {}
						end
					end
				end
				passes = passes and matches_straight_check
				
				--Check if there are enough cards of the same/different rank to satisfy the hand
				--Also, if there are wildcards, what rank(s) is/are needed to satisfy the hand
				local matches_rank_check = true
				
				if passes then
					local not_allocated_ranks = copy_table(unique_ranks)
					if type(hands_list[i].ranks) == "table" then
						--Iterate through each requirement
						local pre_allocated_cards = #allocated_ranks
						local utilized_allocations = 0
						for rank_index, requirement in ipairs(hands_list[i].ranks) do
							local allocated_rank = false
							--Iterate through not-allocated ranks to see if we can allocate it
							local temp_rank_table = copy_table(not_allocated_ranks)
							for allo_rank_index, ranks in pairs(temp_rank_table) do
								if ranks.count + stone_cards_remaining >= requirement then
									local stone_card_help = math.max(0, requirement - ranks.count)
									stone_cards_remaining = math.max(0, stone_cards_remaining - stone_card_help)
									--Rank is now allocated
									table.insert(allocated_ranks, {rank = ranks.rank, stone_cards = stone_card_help})
									table.remove(not_allocated_ranks, allo_rank_index)
									allocated_rank = true
									break
								end
							end
							--If a stone card has been pre-allocated by the straight check, and is available to be used to satisfy a rank check, do that first
							--We can do this because cards allocated via straight check are guaranteed to be unique from the others
							if not allocated_rank and utilized_allocations < pre_allocated_cards then
								utilized_allocations = utilized_allocations + 1
								allocated_rank = true
							end
							--If no ranks can satisfy the requirement, try to satisfy it with only stone cards
							if not allocated_rank and stone_cards_remaining >= requirement then
								stone_cards_remaining = math.max(0, stone_cards_remaining - requirement)
								table.insert(allocated_ranks, {rank = 'stone', stone_cards = requirement})
								allocated_rank = true
							end
							--If we still cannot satisfy the requirement, the hand cannot be built
							if not allocated_rank then
								matches_rank_check = false
								break
							end
						end
					else
						matches_rank_check = (#unique_ranks >= hands_list[i].ranks)
						for addin_stone_cards = 1, (hands_list[i].cards_min - num_regular_cards) do
							table.insert(allocated_ranks, {rank = 'stone', stone_cards = 1})
						end
					end
				end
				passes = passes and matches_rank_check
				
				--Hand is "valid", meaning it can be built with a combination of chosen cards and wildcards
				if passes then
					table.insert(valid_hands, {hand = hands_list[i].hand, tiebreaker = hands_list[i].tiebreaker, allocations = allocated_ranks, flushes = hands_list[i].flushes})
				end
			end
			
			local valid_levels = {}
			
			--Determine base score for all valid hands, so they can be ordered
			for k, v in ipairs(G.handlist) do
				for _, valid_iter in pairs(valid_hands) do
					if v == valid_iter.hand then
						table.insert(valid_levels, {hand = v, total = (G.GAME.hands[v].chips) * (G.GAME.hands[v].mult), tiebreaker = valid_iter.tiebreaker, allocations = valid_iter.allocations, flushes = valid_iter.flushes})
					end
				end
			end
			--Order the list by score
			table.sort(valid_levels, function(a, b) return (a.total > b.total) or (a.total == b.total and a.tiebreaker < b.tiebreaker) end)
			
			sendDebugMessage("Valid hands:")
			for k, v in ipairs(valid_levels) do
				sendDebugMessage("\t" .. v.hand)
			end
			
			sendDebugMessage("---")
			
			text, loc_disp_text, poker_hands, scoring_hand, disp_text = ""
			
			--As long as something can be played, try to give a suit and rank to all needed stone cards
			local found_hand = false
			for j = 1, #valid_levels do
				local copy_ranks = copy_table(unique_ranks)
				local copy_suits = copy_table(unique_suits)
				sendDebugMessage("Now trying: " .. valid_levels[j].hand)
				
				local s_stone_index = 1
				--local suits_remaining = valid_levels[j].suits - #copy_suits
				local suits_remaining = 1
				if has_four_fingers and num_stone_cards >= 2 then suits_remaining = 2 end
				if valid_levels[j].flushes then suits_remaining = 0 end
				
				--We calculated rank allocations earlier, and noted how many stone cards were needed to meet the requirement. This means we already know what rank the stone card needs to be. So we iterate through our list of stone cards assigning rank. A rank of 'stone' means it can be any value 
				for _, alloc in ipairs(valid_levels[j].allocations) do
					if alloc.stone_cards > 0 then
						local use_rank = alloc.rank
						if use_rank == 'stone' then
							for _, find_rank in pairs(ranks) do
								local rank_used_already = false
								for _, search_rank in pairs(copy_ranks) do
									if find_rank == search_rank.rank then
										rank_used_already = true
										break
									end
								end
								if not rank_used_already then
									use_rank = find_rank
									table.insert(copy_ranks, {rank = use_rank, count = alloc.stone_cards})
									break
								end
							end
						end
						--Suits are easy to shove in; most of the time they can be the suit of the first card. In the rare case another suit is used, we just find another one from the list of valid suits that does not exist in copy_suits. This is calculated individually compared to rank
						for stone_allocation = 1, alloc.stone_cards do
							local use_suit = "Hearts"
							if #copy_suits > 0 then use_suit = copy_suits[1].suit end
							--If we do need a suit, find a unique one
							if suits_remaining > 0 then
								for _, find_suit in pairs(suits) do
									local suit_used_already = false
									for _, search_suit in pairs(copy_suits) do
										if find_suit == search_suit.suit then
											suit_used_already = true
											break
										end
									end
									if not suit_used_already then
										use_suit = find_suit
										suits_remaining = suits_remaining - 1
										table.insert(copy_suits, {suit = use_suit, count = 1})
										break
									end
								end
							end
							sendDebugMessage("\t\tAllocating (" .. use_suit .. " ~ " .. use_rank .. ")")
							blank_slate_set_card(s_stone[s_stone_index], use_suit, use_rank)
							s_stone_index = s_stone_index + 1
						
						end
					end
				end
				
				text, loc_disp_text, poker_hands, scoring_hand, disp_text = smod_get_poker_hand_info(_cards)
				if disp_text == 'Royal Flush' and num_stone_cards > 0 then disp_text = 'Straight Flush' end
				sendDebugMessage("\tRuling: " .. disp_text)
				if disp_text == valid_levels[j].hand then
					sendDebugMessage("Blank Slate agrees!")
					found_hand = true
					break
				else
					sendDebugMessage("Disagreement. Trying next hand.")
				end
			end
			if not found_hand then
				sendDebugMessage("Did not find a hand. weird.")
			end
			if #valid_levels == 0 then --#valid_hands is zero
				text, loc_disp_text, poker_hands, scoring_hand, disp_text = smod_get_poker_hand_info(_cards)
			end
			
		else --Blank Slate does not exist lol
			text, loc_disp_text, poker_hands, scoring_hand, disp_text = smod_get_poker_hand_info(_cards)
		end
		
		if has_blank_slate then
			for i = 1, #_cards do
				if _cards[i].blank_slate_revert then
					blank_slate_revert_card_data(_cards[i])
				end
			end
		end
		
		return text, loc_disp_text, poker_hands, scoring_hand, disp_text
	end
	


----------------------------------------------
------------MOD CODE END----------------------
