SMODS.Joker {
    key = 'TravellingWithoutMoving',
    atlas = 'Jokers',
    pos = {
        x = 0,
        y = 4
    },
    rarity = 3,
    config = {
        extra = {
        }
    },
    jmix_addsound = 'jmix_TravellingWithoutMoving',
    jmix_year = '1996',
    jmix_genres = { 'funk', 'jazz', 'pop' },
    blueprint_compat = false,
    pools = {
        Album = true
    },
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local stg = card.ability.extra
        return {
            vars = {}
        }
    end,
    calculate = function(self, card, context)
        local stg = card.ability.extra

        if context.buying_card and not context.card ~= card and context.card.from_area == G.shop_jokers and not context.blueprint then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local new_card = create_card_for_shop(G.shop_jokers)
                    G.shop_jokers:emplace(new_card)
                    return true;
                end
            }))
            return {
                message = localize('k_jmix_rearrange_ex'),
                sound = 'jmix_rearrange'
            }
        end
    end
}

SMODS.Sound {
    key = 'TravellingWithoutMoving',
    path = 'addsounds/TravellingWithoutMoving.ogg'
}

SMODS.Sound {
    key = 'rearrange',
    path = 'rearrange.ogg'
}
