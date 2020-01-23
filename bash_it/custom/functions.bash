mcd()
{
    test -d "$1" || mkdir "$1" && cd "$1"
}

mtd()
{
    local dir
    dir=$(mktemp -d)
    if test -n "$dir"
    then
        if test -d "$dir"
        then
            echo "$dir"
            cd "$dir"
        else
            echo "mktemp directory $dir does not exist"
        fi
    else
        echo "mktemp didn't work"
    fi
}