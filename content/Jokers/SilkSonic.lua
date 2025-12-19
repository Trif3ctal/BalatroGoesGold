SMODS.Joker {
    key = 'SilkSonic',
    atlas = 'Jokers',
    pos = {
        x = 4,
        y = 4
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    -- jmix_addsound = 'jmix_templatestring',
    jmix_year = 2021,
    jmix_genres = { 'rnb', 'soul', 'funk'},
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
