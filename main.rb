Dir["/home/*/smite_calc/lib/*/*"].each {|file| require file }

ra = Ra.new(@ra_stats, "Ovaculos")
nezha = Nezha.new(@nezha_stats, "Gabereal")
ra.slow(nezha)
