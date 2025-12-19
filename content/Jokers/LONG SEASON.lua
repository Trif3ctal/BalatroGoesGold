SMODS.Joker {
    key = 'LONGSEASON',
    atlas = 'Jokers',
    pos = {
        x = 9,
        y = 1
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    -- jmix_addsound = 'jmix_templatestring',
    jmix_year = 1996,
    jmix_genres = { 'pop' },
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
