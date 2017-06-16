require_relative 'host.rb'
host1 = Host.new("name")

class Listing
    attr_accessor :cancellation, :guests, :reviews, :host, :beds, :dates_available, :price
    
    def initialize(hostObj, bedsnum, dates_availablenum, pricenum)
        @cancellation = "strict"
        @guests = []
        @reviews = {}
        @host = hostObj
        @beds = bedsnum
        @dates_available = dates_availablenum
        @price = pricenum
    end
    
    def reserve_and_pay(name,num_of_nights)
        @guests.push(name)
        return num_of_nights * price
    end
    
    def leave_review(name, text)
        @reviews[name.to_sym] = text
    end
    
end

# class Host 
#     def initialize(name)
#         @host_name = name
#     end
# end

host1 = Host.new("name")
newListing = Listing.new(host1, 4, 6, 17)
puts newListing.host.name
