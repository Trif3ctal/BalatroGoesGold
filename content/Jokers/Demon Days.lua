SMODS.Joker {
    key = 'DemonDays',
    atlas = 'Jokers',
    pos = {
        x = 4,
        y = 1
    },
    rarity = 2,
    config = {
        extra = {
            active = false
        }
    },
    bgg_addsound = 'bgg_DemonDays',
    bgg_year = 2005,
    bgg_genres = { 'pop', 'rock', 'hiphop', 'electronic' },
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
        if context.before and not context.blueprint then
            local suits = {
                ['Hearts'] = 0,
                ['Diamonds'] = 0,
                ['Clubs'] = 0,
                ['Spades'] = 0
            }
            for i = 1, #context.scoring_hand do
                if not SMODS.has_any_suit(context.scoring_hand[i]) then
                    if context.scoring_hand[i]:is_suit('Hearts', true) and suits["Hearts"] == 0 then
                        suits["Hearts"] = suits["Hearts"] + 1
                    elseif context.scoring_hand[i]:is_suit('Diamonds', true) and suits["Diamonds"] == 0 then
                        suits["Diamonds"] = suits["Diamonds"] + 1
                    elseif context.scoring_hand[i]:is_suit('Spades', true) and suits["Spades"] == 0 then
                        suits["Spades"] = suits["Spades"] + 1
                    elseif context.scoring_hand[i]:is_suit('Clubs', true) and suits["Clubs"] == 0 then
                        suits["Clubs"] = suits["Clubs"] + 1
                    end
                end
            end
            for i = 1, #context.scoring_hand do
                if SMODS.has_any_suit(context.scoring_hand[i]) then
                    if context.scoring_hand[i]:is_suit('Hearts') and suits["Hearts"] == 0 then
                        suits["Hearts"] = suits["Hearts"] + 1
                    elseif context.scoring_hand[i]:is_suit('Diamonds') and suits["Diamonds"] == 0 then
                        suits["Diamonds"] = suits["Diamonds"] + 1
                    elseif context.scoring_hand[i]:is_suit('Spades') and suits["Spades"] == 0 then
                        suits["Spades"] = suits["Spades"] + 1
                    elseif context.scoring_hand[i]:is_suit('Clubs') and suits["Clubs"] == 0 then
                        suits["Clubs"] = suits["Clubs"] + 1
                    end
                end
            end
            if suits["Hearts"] > 0 and
                suits["Diamonds"] > 0 and
                suits["Spades"] > 0 and
                suits["Clubs"] > 0 then
                card.ability.extra.active = true
            end
        end
        if context.repetition and context.cardarea == G.play and card.ability.extra.active then
            return {
                repetitions = 1
            }
        end
        if context.after and not context.blueprint and card.ability.extra.active then
            card.ability.extra.active = false
        end
    end
}

SMODS.Sound {
    key = 'DemonDays',
    path = 'addsounds/Demon Days.ogg'
}