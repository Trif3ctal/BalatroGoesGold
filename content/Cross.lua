SMODS.Joker {
    key = 'Cross',
    atlas = 'Jokers',
    pos = {
        x = 0,
        y = 1
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    bgg_addsound = 'bgg_Cross',
    blueprint_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        local stg = card.ability.extra
        return {
            vars = {}
        }
    end,
    calculate = function(self, card, context)
        local stg = card.ability.extra
    end
}

SMODS.Sound {
    key = 'Cross',
    path = 'addsounds/Cross.ogg'
}
