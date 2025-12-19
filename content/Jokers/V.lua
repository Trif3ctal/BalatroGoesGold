SMODS.Joker {
    key = 'V',
    atlas = 'Jokers',
    pos = {
        x = 5,
        y = 3
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    jmix_addsound = 'jmix_V',
    jmix_year = 2014,
    jmix_genres = { 'pop', 'electronic', 'rock' },
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
    key = 'V',
    path = 'addsounds/V.ogg'
}
