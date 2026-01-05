# Process in order: New Testament then Old Testament
for audio_file in $(find new/audio -name "*.mp3" | sort -V); do
    clear
    # Create full HTML audio element
    html_element="<audio controls><source src=\"/$audio_file\" type=\"audio/mpeg\">Your browser does not support the audio element.</audio>"
    
    # Print to screen
    echo "$html_element"
    
    # Copy to clipboard
    echo "$html_element" | wl-copy
    echo "HTML element copied to clipboard"
    
    # Play with mpv
    mpv --no-video "$audio_file"
done

# Then Old Testament
for audio_file in $(find old/audio -name "*.mp3" | sort -V); do
    clear
    html_element="<audio controls><source src=\"/$audio_file\" type=\"audio/mpeg\">Your browser does not support the audio element.</audio>"
    
    echo "$html_element"
    echo "$html_element" | wl-copy
    echo "HTML element copied to clipboard"
    
    mpv --no-video "$audio_file"
done
