mixin Magic {
  int mana = 0;
  int magicDamage = 0;
    int castSpell(Character other) {
      mana -= 10;
      int damage = magicDamage - other.defense;

      other.hp -= damage;
      return damage;
    }
}
mixin Melee {
  int stamina = 0;
  int attackPower = 0;
  
  int attack(Character other) {
    stamina -= 10;
    int damage = attackPower - other.defense;

    other.hp -= damage;
    return damage;
  }
}

class Character {
  String name;
  int hp;
  int defense;
  
  Character({this.name = "", this.hp = 0, this.defense = 0});
}

class Player extends Character with Magic {
  Player({name, hp, magicDamage, mana, defense}) : super(name: name, hp: hp, defense: defense) {
    this.mana = mana;
    this.magicDamage = magicDamage;
  }
}

class Enemy extends Character with Melee {
  Enemy({name, hp, attackPower, stamina, defense}) : super(name: name, hp: hp, defense: defense) {
    this.stamina = stamina;
    this.attackPower = attackPower;
  }
}
// Testing the mix-ins
void main() {
  Player player = Player(name: 'Player', hp: 100, magicDamage: 50, mana: 100, defense: 5);
  Enemy enemy = Enemy(name: 'Boss', hp: 200, attackPower: 20, stamina: 60, defense: 10);

  int playerDamage = enemy.attack(player);
  int enemyDamage = player.castSpell(enemy);

  print('Boss hits Player for $playerDamage points of damage!');
  print('Player hits Boss for $enemyDamage points of damage!');
}
