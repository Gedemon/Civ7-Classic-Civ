/*
	Classic Civ
	Remove unloks
	Gedemon (2025)
*/

DELETE FROM CivilizationUnlocks WHERE CivilizationType <> Type
AND EXISTS (
    SELECT 1
    FROM Parameters
    WHERE Parameters.ParameterID = 'ClassicCivSinglePath' AND Parameters.DefaultValue = 1
);

DELETE FROM LeaderUnlocks;