require 'rake'
def h(name)
  File.expand_path("~/#{name}")
end

puts File.expand_path("../",__FILE__)

%w[bin lib src local].each do |dir|
  directory(h(dir))
end

desc("Install mercurial from repository")
task :hg => h("lib") do
  hg('http://selenic.com/repo/hg#stable',h("lib/hg/hg-stable")) do
    system "make local"
  end
end

desc("Install nodejs + npm")
task :node => [h("src"),h("lib")] do
  where = h("lib/node")
  git('http://github.com/joyent/node.git',h("src/node")) do
    system "./configure --prefix=#{h("lib/node")}"
    system "make install"
    ENV["PATH"]="#{h("lib/node/bin")}:#{ENV["PATH"]}"
    system "curl http://npmjs.org/install.sh | sh"
  end
end

desc("Install rvm")
task :rvm do
  system "bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )"
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
 if block_given?
   cd where do
     yield
   end
 end
end
def hg (repo, where="")
 system "hg clone #{repo} #{where}"
 if block_given?
   cd where do
     yield
   end
 end
end
