SMODS.Joker {
    key = 'Vanisher',
    atlas = 'Jokers',
    pos = {
        x = 4,
        y = 2
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    bgg_addsound = 'bgg_Vanisher',
    blueprint_compat = true,
    pools = {
        Album = true
    },
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
    key = 'Vanisher',
    path = 'addsounds/Vanisher.ogg'
}
