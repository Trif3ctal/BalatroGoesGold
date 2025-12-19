SMODS.Booster {
    key = "mashup_mega_1",
    kind = "Album",
    -- atlas = "Boosters",
    group_key = "k_jmix_mashup_pack",
    pos = {
        x = 3,
        y = 0
    },
    config = {
        extra = 4,
        choose = 2
    },
    cost = 8,
    weight = 0.12,
    select_card = 'jokers',
    create_card = function(self, card)
        return create_card("Album", G.pack_cards, nil, nil, true, true, nil, "jmix_mashup")
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.ORANGE)
        ease_background_colour({ new_colour = G.C.ORANGE, special_colour = G.C.BLACK, contrast = 2 })
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { math.min(card.ability.choose + (G.GAME.modifiers.booster_choice_mod or 0), math.max(1, card.ability.extra + (G.GAME.modifiers.booster_size_mod or 0))), math.max(1, card.ability.extra + (G.GAME.modifiers.booster_size_mod or 0)) } }
    end
}
