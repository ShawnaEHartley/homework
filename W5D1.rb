class LRUCache

    def initialize(num)
        @cache = Array.new(num)
        
    end

    def print
        p @cache
    end

    def count
        @cache.length
    end

    def add(ele)
        # self.cache_explansion if @cache.all? {|ele| ele != nil}
        
        self.revive(ele) if @cache.include?(ele)

        @cache.each_with_index do |el, i|
            if el == nil
                @cache[i] = ele
                break
            end
        end

        @cache.delete_at(0)
        @cache << ele
    end

    def show
        p @cache
    end

    private

    # def cache_explansion
    #     num = count
    #     new_eles = Array.new(num)
    #     @cache.concat(new_eles)
    # end

    def revive(value)
        @cache.each_with_index do |ele, i|
            if ele == value
                @cache[0...i] + @cache[i..-1] + @cache[i]
                ##Why doesnt this line work??
            end
        end
    end

end

johnny_cache = LRUCache.new(4)
johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.show


