require_relative "character"

@ra_stats = {
  health: 385,
  mana: 255,
  phys_prot: 12,
  magi_prot: 30,
  hp5: 10,
  mp5: 3.9,
  movement_speed: 360,
  basic_dmg: 34.0,
  basic_rng: 55,
  basic_spd: 0.80,
  basic_scal: 20,
  basic_prog: [1],
  level_scales: {health: [68, 'f'], basic_dmg: [1.5, 'f'], basic_spd: [0.001, 'f']},
  ability_stats: {slow: 0.30}
}

class Ra < Character
  include Crowd_Control
end
