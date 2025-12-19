SMODS.Joker {
    key = 'Fragile',
    atlas = 'Jokers',
    pos = {
        x = 3,
        y = 3
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    jmix_addsound = 'jmix_Fragile',
    jmix_year = 1971,
    jmix_genres = { 'rock', },
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
    key = 'Fragile',
    path = 'addsounds/Fragile.ogg'
}
