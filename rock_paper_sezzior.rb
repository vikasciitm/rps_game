require "colorize"
class RockPaperSezzior
	def start(first,second)
		rock=1
		paper=2
		sezzior=3
		print "\n-----------------------------------------------------------------------------------\n"
		print "\nEnter the number(1,2,3) #{first} cho value:"
		a=gets.to_i
		print "\nEnter the number(1,2,3) #{second} cho value:"
		b=gets.to_i
		print "\n-----------------------------------------------------------------------------------\n"
		if a==1&&b==1
			puts "#{first}: rock"
			puts "#{second}: rock"
			puts "no wins".green
		elsif a==2&&b==2
			puts "#{first}: paper"
			puts "#{second}: paper"
			puts "no wins".green
		elsif a==3&&b==3
			puts "#{first}: sezzio"
			puts "#{second}: sezzio"
			puts "no wins".green
		elsif a==1&&b==2
			puts "#{first}: rock"
			puts "#{second}: paper"
			puts "#{second} wins".green
		elsif a==1&&b==3
			puts "#{first}: rock"
			puts "#{second}: sezzio"
			puts "#{first} wins".green
		elsif a==2&&b==1
			puts "#{first}: paper"
			puts "#{second}: rock"
			puts "#{first} wins".green
		elsif a==2&&b==3
			puts "#{first}: paper"
			puts "#{second}: sezzio"
			puts "#{second} wins".green
		elsif a==3&&b==1
			puts "#{first}: sezzio"
			puts "#{second}: rock"
			puts "#{second} wins".green
		elsif a==3&&b==2
			puts "#{first}: sezzio"
			puts "#{second}: paper"
			puts "#{second} wins".green
		else
			puts "wrong".red
		end
	end
end
print "\n-----------------------------------------------------------------------------------\n"
print "Rock Paper Sezzior game start".center(100).red
while true
	print "\nEnter the name first player:".green
	first=gets.chomp
	print "\nEnter the name second player:".green
	second=gets.chomp
	obj=RockPaperSezzior.new
	obj.start(first,second)


	print "\nEnter the number game start=1 and game end=0:".red
	on_off=gets.to_i
	if on_off==0
		break
	end
	print "\n-----------------------------------------------------------------------------------\n"
end