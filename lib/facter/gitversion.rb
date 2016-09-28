# A custom fact to get git version installed.

Facter.add('git_version') do
        setcode do
                Facter::Core::Execution.exec("git --version | cut -f3 -d \" \"")
        end
end
