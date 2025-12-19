SMODS.Joker {
    key = 'Rumours',
    atlas = 'Jokers',
    pos = {
        x = 6,
        y = 0
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    jmix_addsound = 'jmix_Rumours',
    jmix_year = 1977,
    jmix_genres = { 'rock', 'pop' },
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
    key = "Rumours",
    path = "addsounds/Rumours.ogg"
}