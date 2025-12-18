SMODS.Joker {
    key = 'KeyOfLife',
    atlas = 'Jokers',
    pos = {
        x = 5,
        y = 4
    },
    rarity = 1,
    config = {
        extra = {
        }
    },
    -- bgg_addsound = 'bgg_templatestring',
    bgg_year = 1976,
    bgg_genres = { 'soul', 'funk'},
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
