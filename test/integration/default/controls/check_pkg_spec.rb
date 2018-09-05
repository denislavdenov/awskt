control 'check_pkg' do

  describe package('curl') do
    it { should be_installed }
  end
end
