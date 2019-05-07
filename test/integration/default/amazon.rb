control "ansible-role-cloudwatchagent - #{os.name} #{os.release} - 01" do
  impact 1.0
  title 'Ansible role cloudwatchagent'
  describe package('amazon-cloudwatch-agent') do
    it { should be_installed }
  end
end