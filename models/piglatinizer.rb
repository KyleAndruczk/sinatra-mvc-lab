class PigLatinizer


    def piglatinize(input)
        input.split(" ").map{ |word| latinize(word)}.join(" ")
    end

    private

    def latinize(word)

        if (%w(a A e E i I o O u U)).include?(word[0])
            word + "way"
        else
            vowel = word.split("").find {|char| (%w(a A e E i I o O u U)).include?(char)}
            vowel_index = word.index(vowel)
            cons = word.slice(0..vowel_index-1)
            other_half = word.slice(vowel_index..word.length)
            other_half + cons + "ay"
        end

    end


end