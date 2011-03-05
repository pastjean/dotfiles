require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md bootstrap.sh bin lib src].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file}")
        puts "identical ~/.#{file}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end

namespace :dotfiles do
  task :zsh do
    cd "zsh"
    %w[zsh zshrc]
  end
  task :vim do
    cd "vim"
  end
  task :others => [:zsh,:vim] do
  end
end

%w[src bin lib local]

def git (repo, where="")
 system "git clone #{repo} #{where}"
end
def hg (repo, where="")
 system "hg clone #{repo} #{where}"
end

def replace_file(file)
  rm_r File.expand_path("~/.#{file}")
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  ln_s File.join(Dir.pwd,"#{file}"), File.expand_path("~/.#{file}")
end
