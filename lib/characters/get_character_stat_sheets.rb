require 'mechanize'

def make_char_stat_files
  ["Achilles", "Agni", "Ah_Muzen_Cab", "Amaterasu", "Anhur", "Anubis", "Ao_Kuang", "Aphrodite", "Apollo", "Arachne", "Ares", "Artemis", "Artio", "Athena", "Ah_Puch", "Awilix", "Baba_Yaga", "Bacchus", "Bakasura", "Baron_Samedi", "Bastet", "Bellona", "Cabrakan", "Camazotz", "Cerberus", "Cernunnos", "Chaac", "Chang%27e", "Charybdis", "Chernobog", "Chiron", "Chronos", "Cliodhna", "Cthulhu", "Cu_Chulainn", "Cupid", "Da_Ji", "Danzaburou", "Discordia", "Erlang_Shen", "Eset", "Fafnir", "Fenrir", "Freya", "Ganesha", "Geb", "Gilgamesh", "Guan_Yu", "Hachiman", "Hades", "He_Bo", "Heimdallr", "Hel", "Hera", "Hercules", "Horus", "Hou_Yi", "Hun_Batz", "Izanami", "Janus", "Jing_Wei", "Jormungandr", "Kali", "Khepri", "King_Arthur", "Kukulkan", "Kumbhakarna", "Kuzenbo", "Loki", "Medusa", "Mercury", "Merlin", "Morgan_Le_Fay", "Mulan", "Ne_Zha", "Neith", "Nemesis", "Nike", "Nox", "Nu_Wa", "Odin", "Olorun", "Osiris", "Pele", "Persephone", "Poseidon", "Ra", "Raijin", "Rama", "Ratatoskr", "Ravana", "Scylla", "Serqet", "Set", "Skadi", "Sobek", "Sol", "Sun_Wukong", "Susano", "Sylvanus", "Terra", "Thanatos", "The_Morrigan", "Thor", "Thoth", "Tiamat", "Tsukuyomi", "Tyr", "Ullr", "Vamana", "Vulcan", "Xbalanque", "Xing_Tian", "Yemoja", "Ymir", "Zeus", "Zhong_Kui"].each do |name| 
    new_char = Character.new("#{name}")
    new_char.write_stats
  end
end
