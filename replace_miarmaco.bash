function replace_miarmaco() {
	source $1
	end_command=""
	for p_var in "${@:2}"; do
		foud=false
		for i in "${!replace[@]}"; do 
			if [ "$i" == "$p_var" ]; then
				add_to_end_command="${replace[$i]}"
				foud="true"
				break
			fi
		done
		if [ "$foud" == "false" ]; then
			add_to_end_command="$p_var"
		fi
		end_command="$end_command $add_to_end_command"
	done
	eval $binary_file$end_command
}

# Example for kubectl
function kubectl() {
	replace_miarmaco $HOME/.replace-miarmaco.bash $@
}