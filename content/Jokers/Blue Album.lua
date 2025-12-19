SMODS.Joker {
    key = 'BlueAlbum',
    atlas = 'Jokers',
    pos = {
        x = 9,
        y = 0
    },
    rarity = 2,
    config = {
        extra = {
            chips = 10
        }
    },
    jmix_addsound = 'jmix_BlueAlbum',
    jmix_year = 1994,
    jmix_genres = { 'rock', 'pop' },
    blueprint_compat = true,
    pools = {
        Album = true
    },
    cost = 5,
    loc_vars = function(self, info_queue, card)
        local stg = card.ability.extra
        return {
            vars = { stg.chips }
        }
    end,
    calculate = function(self, card, context)
        local stg = card.ability.extra
        if context.individual and context.cardarea == G.play and next(context.poker_hands["Four of a Kind"]) then
            context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) + card.ability.extra.chips
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS
            }
        end
    end
}

SMODS.Sound {
    key = 'BlueAlbum',
    path = 'addsounds/Blue Album.ogg'
}
