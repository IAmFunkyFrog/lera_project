
# Convert Markdown to HTML using pandoc
# Usage: ./script.sh <input.md> [output.html]

INPUT_FILE="${1:-project.md}"
OUTPUT_FILE="${2:-project.html}"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: File '$INPUT_FILE' not found"
    exit 1
fi

pandoc "$INPUT_FILE" -o "$OUTPUT_FILE" --from=markdown --to=html5

if [ $? -eq 0 ]; then
    echo "Successfully created: $OUTPUT_FILE"
else
    echo "Error: Conversion failed"
    exit 1
fi
