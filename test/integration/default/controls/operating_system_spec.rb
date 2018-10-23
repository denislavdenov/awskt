control 'operating_system' do
  describe command('lsb_release -a') do
    its('stdout') { should match (/Ubuntu/) }
  end
  describe os.family do
    it { should eq 'debian' }
    it { should_not eq 'windows' }
  end
end
