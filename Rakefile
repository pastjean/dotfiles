require 'rake'
def h(name)
  File.expand_path("~/#{name}")
end

puts File.expand_path("../",__FILE__)

%w[bin lib src local].each do |dir|
  directory(h(dir))
end

desc "link dotfiles into home"
task :link do
  FileList['*'].exclude("Rakefile","README.md","bootstrap.sh").each do |file|
    dest = h(".#{file}")
    if File.exist? dest
      if File.identical? file, dest
        puts "identical #{dest}"
        next
      end
      mv dest, "#{dest}.old"
    end
    ln_s File.join(Dir.pwd,file), dest
  end
end

task :clean do
  system "git clean -dfx"
end

desc "Pull latest Update"
task :pull do
  system "git pull"
end

task :default => [:link]

def git (repo, where="")
 system "git clone #{repo} #{where}"
end
def hg (repo, where="")
 system "hg clone #{repo} #{where}"
end
