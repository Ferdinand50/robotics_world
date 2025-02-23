script_folder="/home/ferdi/Projects/robotics_world/build/Release/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanbuildenv-release-x86_64.sh"
for v in ACLOCAL_PATH AUTOMAKE_CONAN_INCLUDES AUTOCONF AUTORECONF AUTOHEADER AUTOM4TE M4
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "$script_folder/deactivate_conanbuildenv-release-x86_64.sh"
    else
        echo unset $v >> "$script_folder/deactivate_conanbuildenv-release-x86_64.sh"
    fi
done


export ACLOCAL_PATH="$ACLOCAL_PATH:/home/ferdi/.conan2/p/b/libto5e40b915cb1ac/p/res/aclocal"
export AUTOMAKE_CONAN_INCLUDES="$AUTOMAKE_CONAN_INCLUDES:/home/ferdi/.conan2/p/b/libto5e40b915cb1ac/p/res/aclocal"
export AUTOCONF="/home/ferdi/.conan2/p/autocf2af015330354/p/bin/autoconf"
export AUTORECONF="/home/ferdi/.conan2/p/autocf2af015330354/p/bin/autoreconf"
export AUTOHEADER="/home/ferdi/.conan2/p/autocf2af015330354/p/bin/autoheader"
export AUTOM4TE="/home/ferdi/.conan2/p/autocf2af015330354/p/bin/autom4te"
export M4="/home/ferdi/.conan2/p/m43fe61932e2887/p/bin/m4"