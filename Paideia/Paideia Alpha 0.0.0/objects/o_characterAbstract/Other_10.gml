/// @description Initialize the statistics

// Attack, defense and attack speed depend on the battle role
attack = getBattleRoleAttack(battleRole);
defense = getBattleRoleDefense(battleRole);
attackSpeed = getBattleRoleAttackSpeed(battleRole);

// Health depends on power
maxHealth = o_manager.baseHealth * characterPower;
currentHealth = maxHealth;