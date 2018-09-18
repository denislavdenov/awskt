control 'check_pkg' do

  describe package('nginx') do
    it { should be_installed }
  end
end