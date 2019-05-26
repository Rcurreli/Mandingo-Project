/// @description Initialize the statistics

// Attack, defense and attack speed depend on the battle role
attack = getBattleRoleAttack(battleRole);
defense = getBattleRoleDefense(battleRole);
attackSpeed = getBattleRoleAttackSpeed(battleRole);
line = getBattleRoleLine(battleRole);
// This order comes from Italian language; this may change in other ones
name = getBattleRoleName(battleRole, gender) + name;

// Health depends on power
maxHealth = o_manager.baseHealth * characterPower;
currentHealth = maxHealth;