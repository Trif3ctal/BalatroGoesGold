SMODS.Joker {
    key = 'Chromakopia',
    atlas = 'Jokers',
    pos = {
        x = 8,
        y = 0
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    jmix_addsound = 'jmix_Chromakopia',
    jmix_year = 2024,
    jmix_genres = { 'neosoul', 'hiphop' },
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
    key = 'Chromakopia',
    path = 'addsounds/Chromakopia.ogg'
}
