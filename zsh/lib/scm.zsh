function scm_prompt_info {
local s=$(git_prompt_info)
if [ -n "$s" ];then
  a="(git)["
  a+="$s"
  a+="]"
  s=$a
fi
printf "%s" $s
}
