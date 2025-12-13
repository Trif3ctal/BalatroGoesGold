SMODS.Joker {
    key = 'GunfighterBallads',
    atlas = 'Jokers',
    pos = {
        x = 1,
        y = 3
    },
    config = {
        extra = {
            goal = 20
        }
    },
    rarity = 3,
    bgg_addsound = 'bgg_GunfighterBallads',
    blueprint_compat = false,
    pools = {
        Album = true
    },
    cost = 9,
    loc_vars = function(self, info_queue, card)
        local stg = card.ability.extra
        return { vars = { stg.goal } }
    end,
    calculate = function(self, card, context)
        local stg = card.ability.extra

        if context.first_hand_drawn and not context.blueprint then
            local eval = function()
                return G.GAME.current_round.hands_played == 0 and G.GAME.blind and
                    ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss'))
            end
            juice_card_until(card, eval, true)
        end

        if context.before and not context.blueprint and G.GAME.current_round.hands_played == 0 and G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then
            local total = 0
            for k, v in pairs(context.scoring_hand) do
                if not v.config.center.replace_base_card then
                    total = total + v.base.nominal
                end
            end

            if total == stg.goal then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.E_MANAGER:clear_queue('base')
                        card:juice_up(0.8, 0.8)
                        play_sound('bgg_gunshot')

                        G.GAME.chips = G.GAME.blind.chips
                        G.STATE = G.STATES.HAND_PLAYED
                        return true;
                    end
                }))
                G.E_MANAGER:add_event(Event({
                    no_delete = true,
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        SMODS.destroy_cards(card)
                        G.FUNCS.draw_from_play_to_discard()
                        G.STATE_COMPLETE = true
                        end_round()
                        update_hand_text({delay = 0, immediate = true}, {mult = 0, chips = 0, chip_total = 0, level = '', handname = ''})
                        return true;
                    end
                }))
            end
        end
    end
}

SMODS.Sound {
    key = 'GunfighterBallads',
    path = 'addsounds/Gunfighter Ballads.ogg'
}

SMODS.Sound {
    key = 'gunshot',
    path = 'gunshot.ogg'
}
