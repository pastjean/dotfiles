require 'rake'

def h(filename)
  "#{ENV["HOME"]}/#{filename}"
end

desc "link dotfiles into home"
task :link do
  skip_all = false
  overwrite_all = false
  backup_all = false

  FileList['*'].exclude("Rakefile","README.md","bootstrap.sh").each do |file|
    overwrite = false
    backup = false

    target = h ".#{file}"

    if File.exist?(target)  || File.symlink?(target)
      if File.identical? file, target
        puts "identical #{target}"
        next
      end
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        end
      end
      mv target "#{target}.bkp" if backup || backup_all
      FileUtils.rm_rf(target) if overwrite || overwrite_all
    end
    ln_s File.join(Dir.pwd,file), target
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
