SMODS.Joker {
    key = 'RunTheJewels3',
    atlas = 'Jokers',
    pos = {
        x = 3,
        y = 0
    },
    rarity = 2,
    config = {
        extra = {
            diamonds = 3
        }
    },
    bgg_addsound = 'bgg_RTJ3',
    bgg_year = 2016,
    bgg_genres = { 'hiphop' },
    blueprint_compat = true,
    pools = {
        Album = true
    },
    cost = 4,
    loc_vars = function(self, info_queue, card)
        local stg = card.ability.extra
        return {
            vars = { stg.diamonds }
        }
    end,
    calculate = function(self, card, context)
        local stg = card.ability.extra
        if context.before then
            local diamond_count = 0
            for i = 1, #context.scoring_hand do
                if not SMODS.has_any_suit(context.scoring_hand[i]) then
                    if context.scoring_hand[i]:is_suit('Diamonds', true) then
                        diamond_count = diamond_count + 1
                    end
                end
            end
            for i = 1, #context.scoring_hand do
                if SMODS.has_any_suit(context.scoring_hand[i]) then
                    if context.scoring_hand[i]:is_suit('Diamonds') then
                        diamond_count = diamond_count + 1
                    end
                end
            end
            if diamond_count >= stg.diamonds then
                return {
                    level_up = true,
                    message = localize('k_level_up_ex')
                }
            end
        end
    end
}

SMODS.Sound {
    key = "RTJ3",
    path = "addsounds/RTJ3.ogg"
}