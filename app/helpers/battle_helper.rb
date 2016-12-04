module BattleHelper
  def battle_configuration_description(battle_cfg)
    fleet_size = battle_cfg.fleet_configurations.map do |fleet_cfg|
      fleet_cfg.ship_cnt
    end.reduce(0, :+)

    map_width = battle_cfg.map_width
    map_height = battle_cfg.map_height

    "#{fleet_size} battleships@#{map_width}x#{map_height}"
  end
end
