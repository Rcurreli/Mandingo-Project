/// @description Initialize the statistics

// Attack and defense depend on the battle role
attack = getBattleRoleAttack(battleRole);
defense = getBattleRoleDefense(battleRole);

// Speed depends on attack and defense
attackSpeed = attack * defense / 2;

// Health depends on power
maxHealth = 12 * characterPower;
currentHealth = maxHealth;