SMODS.Joker {
    key = 'NothingButBest',
    atlas = 'Jokers',
    pos = {
        x = 8,
        y = 2
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    jmix_addsound = 'jmix_NothingButBest',
    jmix_year = 2008,
    jmix_genres = { 'jazz', 'pop' },
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
    key = 'NothingButBest',
    path = 'addsounds/NothingButBest.ogg'
}