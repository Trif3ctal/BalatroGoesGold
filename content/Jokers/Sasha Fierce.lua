SMODS.Joker {
    key = 'SashaFierce',
    atlas = 'Jokers',
    pos = {
        x = 7,
        y = 3
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    -- jmix_addsound = 'jmix_templatestring',
    jmix_year = 2008,
    jmix_genres = { 'pop', 'rnb' },
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
