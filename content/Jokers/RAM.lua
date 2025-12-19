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
    jmix_addsound = 'jmix_RAM',
    jmix_year = 2013,
    jmix_genres = { 'electronic', 'funk', 'soul', 'pop' },
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