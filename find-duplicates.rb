#
# 1. Write a function to find all duplicate members of the below array
#    and return a new array with only duplicates.
#
#     Input:
#
#     input_duplicates_array = ['computer', 'pencil', 'paper, 'computer', 'pen', 'pencil']
#
#     Output:
#
#     output_duplicates_array = ['computer', 'pencil']
#
#
# 2. Write a function to remove duplicate members of the below array and
#    return a new array with non-duplicates.
#
#     Input:
#
#     input_unique_members_array = [ 5, 9, 20, 20, 3, 4, 5, 11 ]
#
#     Output:
#
#     output_unique_members_array = [ 5, 9, 20, 3, 4, 11 ]
#

require 'rspec/autorun'

# Return with element with duplicate
def find_duplicate(arr)
	arr.select{|e| arr.count(e) > 1}.uniq
end

# Return array with unique values
def find_uniq(arr)
	arr.uniq
end


RSpec.describe do

	let(:array_1) {["computer", "pencil", "paper", "computer", "pen", "pencil"]}
	let(:array_2) {[ 5, 9, 20, 20, 3, 4, 5, 11 ]}

	it "should return array with duplicates value" do
		expect(["computer", "pencil"]).to eq(find_duplicate(array_1))
	end

	it "should return array with unique values" do
		expect([ 5, 9, 20, 3, 4, 11 ]).to eq(find_uniq(array_2))
	end

end
