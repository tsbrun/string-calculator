require "string_calculator"

describe StringCalculator do
    # describe block puts specs in context (accepts class name or string)

    describe ".add" do
        context "given an empty string" do
            it "returns zero" do
                expect(StringCalculator.add("")).to eq(0)
                # eq => basic equality matcher
            end
        end

        context "given '4'" do
            it "returns 4" do
                expect(StringCalculator.add("4")).to eq(4)
            end
        end

        context "given '10'" do
            it "returns 10" do
                expect(StringCalculator.add("10")).to eq(10)
            end
        end

        context "two numbers" do
            context "given 2,4" do
                it "returns 6" do
                    expect(StringCalculator.add("2,4")).to eq(6)
                end
            end

            context "given 17,100" do
                it "returns 117" do
                    expect(StringCalculator.add("17,100")).to eq(117)
                end
            end
        end
    end

    describe ".subtract" do
        context "given an empty string" do
            it "returns zero" do
                expect(StringCalculator.subtract("")).to eq(0)
            end
        end

        context "given '1'" do
            it "returns 1" do
                expect(StringCalculator.subtract("1")).to eq(1)
            end
        end

        context "given '5'" do
            it "returns 5" do
                expect(StringCalculator.subtract("5")).to eq(5)
            end
        end

        context "two numbers" do
            context "given 7,5" do
                it "returns 2" do
                    expect(StringCalculator.subtract("7,5")).to eq(2)
                end
            end

            context "given 13,15" do
                it "returns -2" do
                    expect(StringCalculator.subtract("13,15")).to eq(-2)
                end
            end
        end
    end
end

# run your specs after every change in code