_script_dir=$(dirname $0)

# Load basic aliases
for _file in $_script_dir/basic/*.zsh; do
  source $_file
done

# Load custom aliases
for _file in $_script_dir/custom/*.zsh; do
  source $_file
done
