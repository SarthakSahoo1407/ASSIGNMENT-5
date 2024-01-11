if [ "$#" -eq 0 ]; then
    echo "Error: No filenames provided."
    exit 1
fi

for filename in "$@"; do
    if [ -e "$filename" ]; then
        echo "File '$filename' already exists."
    else
        if [ -d "mydir" ]; then
            echo "mydir already exists."
            file_count=$(ls mydir | wc -l)
            echo "Number of files in mydir: $file_count"
        else
            mkdir mydir
            echo "mydir created."
        fi
        touch "mydir/$filename"
        echo "File '$filename' created in mydir."
    fi
done
