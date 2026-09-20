-- ====================================================================
-- Custom Cayo Perico Secondary Loot Script (Trio Optimized)
-- For YimMenu V2
--
-- Breakdown for 3 Players (300% Total Bag Capacity):
-- - 4 Gold Piles   (~266.4% bag space total)
-- - 2 Paintings    (50% bag space each)
-- - 2 Cash Piles   (25% bag space each)
-- ====================================================================

local function setup_trio_secondary_loot()
    -- Automatically detect active character slot (MP0_ or MP1_)
    local character_prefix = "MP" .. tostring(stats.get_int("MPPLY_LAST_MP_CHAR")) .. "_"

    -- 1. Enable 4 Gold Piles inside Compound (Bitmask 15 = 4 Slots)
    stats.set_int(character_prefix .. "H4LOOT_GOLD_C", 15)
    stats.set_int(character_prefix .. "H4LOOT_GOLD_C_SCOPED", 15)

    -- 2. Enable 2 Paintings inside Office (Bitmask 3 = 2 Slots)
    stats.set_int(character_prefix .. "H4LOOT_PAINT", 3)
    stats.set_int(character_prefix .. "H4LOOT_PAINT_SCOPED", 3)

    -- 3. Enable 2 Cash Piles (Bitmask 3 = 2 Slots)
    stats.set_int(character_prefix .. "H4LOOT_CASH_I", 3)
    stats.set_int(character_prefix .. "H4LOOT_CASH_I_SCOPED", 3)

    -- 4. Clear Cocaine from Island
    stats.set_int(character_prefix .. "H4LOOT_COKE_I", 0)
    stats.set_int(character_prefix .. "H4LOOT_COKE_I_SCOPED", 0)

    -- 5. Clear Weed from Island
    stats.set_int(character_prefix .. "H4LOOT_WEED_I", 0)
    stats.set_int(character_prefix .. "H4LOOT_WEED_I_SCOPED", 0)

    -- In-game visual notification & debug log
    gui.show_message("Cayo Setup", "Trio loot configured (4 Gold, 2 Paints, 2 Cash)! Change sessions to apply to planning board.")
    log.info("[Cayo Setup] Secondary loot configured for 3 players.")
end

-- Run function
setup_trio_secondary_loot()