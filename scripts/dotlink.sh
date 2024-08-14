script_path="$(realpath "$0")"
dir_path="$(dirname $script_path)"

dotlink() {
	source_file="$1"
	target_file="$2"

	ln -s "$dir_path/$source_file" "$HOME/target_file"
}
