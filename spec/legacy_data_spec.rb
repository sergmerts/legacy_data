require('rspec')
require('legacy_data')

describe('convert_legacy') do
  it('converts hash whose value is an array and transforms it into a hash where each element has its value as the key') do
    convert_legacy({ 1  => ["A"]}).should(eq({"A" => 1}))
  end
  it('reverses key and value where value is an array') do
    convert_legacy({ 1 => ["A", "B"], 2 => ["C","D"]}).should(eq({"A" => 1, "B" => 1, "C" => 2, "D" => 2}))
  end
end
