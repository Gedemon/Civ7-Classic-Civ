/*
	Classic Civ
	Update MapSizes
	Gedemon (2025)
*/

UPDATE MapSizes
SET MaxPlayers = (
    SELECT DefaultValue
    FROM Parameters
    WHERE ParameterID = 'NumPlayerOnLargerMap'
),
DefaultPlayers = (
    SELECT DefaultValue
    FROM Parameters
    WHERE ParameterID = 'NumPlayerOnLargerMap'
)
WHERE EXISTS (
    SELECT 1
    FROM Parameters
    WHERE ParameterID = 'NumPlayerOnLargerMap'
AND MaxPlayers > 8
);