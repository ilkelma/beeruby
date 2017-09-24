module Beeruby
    class Bitterness
        def self.tinseth(alpha, hop_weight, wort_gravity, boil_time, post_boil_volume)
            ((
                ((75.to_f * ((alpha.to_f * hop_weight.to_f) * 1.65 * (0.000125 ** (wort_gravity.to_f - 1.to_f))))) *
                (1.to_f - (Math::E ** (-0.04 * boil_time.to_f))) / 4.15
            ) / post_boil_volume).round(1)
        end
    end
end