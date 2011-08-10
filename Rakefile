require 'rake'

def h(filename)
  "#{ENV["HOME"]}/#{filename}"
end

desc "link dotfiles into home"
task :link do
  opts_all = {:skip=>false,
    :overwrite=>false,
    :backup=>false}

  FileList['*'].exclude("Rakefile","README.md","bootstrap.sh").each do |file|
    overwrite = false
    backup = false

    target = h "#{file}"

    if File.exist?(target)  || File.symlink?(target)
      if File.identical? file, target
        puts "identical #{target}"
        next
      end
      unless opts_all.has_value?(true)
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then opts_all[:overwrite] = true
        when 'B' then opts_all[:backup] = true
        when 'S' then opts_all[:skip] = true
        end
      end
      mv target "#{target}.bkp" if backup || opts_all[:backup]
      FileUtils.rm_rf(target) if overwrite || opts_all[:overwrite]
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

