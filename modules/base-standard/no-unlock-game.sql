/*
	Classic Civ
	Remove unloks
	Gedemon (2025)
*/

DELETE FROM UnlockRequirements WHERE UnlockType LIKE 'UNLOCK_CIVILIZATION_%' and Tooltip <> 'LOC_UNLOCK_PLAY_AS_SAME_TOOLTIP';