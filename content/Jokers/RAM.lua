SMODS.Joker {
    key = 'RAM',
    atlas = 'Jokers',
    pos = {
        x = 2,
        y = 0
    },
    rarity = 1,
    config = {
        extra = {

        }
    },
    bgg_addsound = 'bgg_RAM',
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
    key = 'RAM',
    path = 'addsounds/RAM.ogg'
}