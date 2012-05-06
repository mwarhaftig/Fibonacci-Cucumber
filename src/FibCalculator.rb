#!/usr/bin/ruby

class FibCalculator
	def fibLoop(n,prev,wantedIteration)
		if (n=="") then
			n=1
			prev=0
		end
	        if (wantedIteration == 1) then
			return n
		end
		fibLoop(n+prev,n,wantedIteration-1)
	end

    def findFibNumber(wantedN)
        if ( wantedN.nil? || ! wantedN.match(/^[0-9]{1,3}$/)) then
			@value="[ERROR] Invalid n value \"#{wantedN}\" (must be integer between 0 and 999).\n\n"
			return
		end
		@value=(wantedN.to_i==0) ? 0 : fibLoop("","",wantedN.to_i)
    end
    
	def value?
        @value
  	end
end	


