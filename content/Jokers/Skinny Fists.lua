SMODS.Joker {
    key = 'SkinnyFists',
    atlas = 'Jokers',
    pos = {
        x = 5,
        y = 1
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    -- jmix_addsound = 'jmix_templatestring',
    jmix_year = 2000,
    jmix_genres = { 'rock', 'experimental' },
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
