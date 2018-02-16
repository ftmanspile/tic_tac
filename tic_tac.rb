def  winner(a,b,c,d,e,f,g,h,i)
			x_wins = ["X","X","X"]
			o_wins = ["O","O","O"]
			argue_hash = {1 => a, 2 => b, 3 => c, 4 => d, 5 => e, 6 => f, 7 => g, 8 => h, 9 => i}
			win_combos = [[argue_hash[1], argue_hash[2], argue_hash[3]], [argue_hash[3], argue_hash[6], argue_hash[9]], [argue_hash[7], argue_hash[8], argue_hash[9]], [argue_hash[1], argue_hash[4], argue_hash[7]], [argue_hash[1], argue_hash[5], argue_hash[9]], [argue_hash[3], argue_hash[5], argue_hash[7]], [argue_hash[2], argue_hash[5], argue_hash[8]], [argue_hash[4], argue_hash[5], argue_hash[6]]]
		(0..7).each do |i|
			if plays == x_wins
				$result = "X's have won"
				break
			elsif plays == o_wins
				$result = "The O's have won. Please try again"  
				break
			else
				$result = "No winner yet, keep playing"
			end
		end
	return $result #the reult is then sent back to the app and out to the webpage	
end