require_relative '../lib/money_format'

describe MoneyFormat do
  let(:no_comma_number) { 1 }
  let(:no_comma_str_expected) { '1' }

  let(:comma_number) { 1000 }
  let(:comma_str_expected) { '1,000' }

  it 'musnt have a comma' do
    expect(MoneyFormat.formatter(no_comma_number)).to eq no_comma_str_expected
  end

  it 'must have a comma' do
    expect(MoneyFormat.formatter(comma_number)).to eq comma_str_expected
  end
end