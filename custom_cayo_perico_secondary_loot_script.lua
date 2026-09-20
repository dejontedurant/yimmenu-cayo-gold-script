-- ====================================================================
-- Custom Cayo Perico Secondary Loot Script (YimMenu V2)
-- Only modifies secondary targets (Sets Compound Gold, clears all island loot)
-- Does NOT modify primary target (Pink Diamond, Tequila, etc.)
-- ====================================================================

local function setup_scoped_secondary_loot()
    -- Get current active character slot (MP0_ or MP1_)
    local character_prefix = "MP" .. tostring(stats.get_int("MPPLY_LAST_MP_CHAR")) .. "_"

    -- 1. Enable Gold inside Compound
    stats.set_int(character_prefix .. "H4LOOT_GOLD_C", 255)
    stats.set_int(character_prefix .. "H4LOOT_GOLD_C_SCOPED", 255)

    -- 2. Clear Cocaine from Island
    stats.set_int(character_prefix .. "H4LOOT_COKE_I", 0)
    stats.set_int(character_prefix .. "H4LOOT_COKE_I_SCOPED", 0)

    -- 3. Clear Cash from Island
    stats.set_int(character_prefix .. "H4LOOT_CASH_I", 0)
    stats.set_int(character_prefix .. "H4LOOT_CASH_I_SCOPED", 0)

    -- 4. Clear Weed from Island
    stats.set_int(character_prefix .. "H4LOOT_WEED_I", 0)
    stats.set_int(character_prefix .. "H4LOOT_WEED_I_SCOPED", 0)

    -- 5. Clear Compound Paintings
    stats.set_int(character_prefix .. "H4LOOT_PAINT", 0)
    stats.set_int(character_prefix .. "H4LOOT_PAINT_SCOPED", 0)

    log.info("[Cayo Perico] Secondary loot updated: Only Compound Gold is enabled!")
end

-- Execute the loot configuration
setup_scoped_secondary_loot()
