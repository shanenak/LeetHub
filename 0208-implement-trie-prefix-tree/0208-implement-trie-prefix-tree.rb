class Trie
    def initialize()
        @t = {}
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
        @t[word]=true
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
        if @t[word]
            return true
        else
            return false
        end
    end


=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
        @t.keys().each do |key|
            return true if key.start_with?(prefix)
        end
        return false
    end


end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)