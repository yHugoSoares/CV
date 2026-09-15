# LaTeX CV Template

A clean, modern, and professional LaTeX CV template customized for Computer Engineering / Informatics students.

## Features
- **Modern Design**: Clean typography with the `lmodern` sans-serif font family.
- **Harmonious Palette**: Custom navy-blue and steel-blue theme for a premium corporate look.
- **Icon Support**: Integrated with `fontawesome5` for email, phone, github, linkedin, and location markers.
- **Compact & Organized**: High information density using custom environments with reduced list spacing.
- **Easy Compilation**: Includes a `Makefile` for automated building.

## Files
- [cv.tex](file:///Users/hugo/Documents/CV/cv.tex): The LaTeX source document. Edit this file to add your personal information, education, experience, projects, and skills.
- [Makefile](file:///Users/hugo/Documents/CV/Makefile): Standard build script.
- **cv.pdf**: The compiled PDF document.

## How to Build

### Using the Makefile (Recommended)
Open a terminal in this directory and run:

```bash
# Clean temporary files and build/rebuild the PDF
make re

# Clean only LaTeX intermediate build files (keeps cv.pdf)
make clean

# Completely remove all built files
make fclean
```

### Manually
If you do not have `make` installed, you can compile the template directly using:
```bash
pdflatex cv.tex
```

## Customization Tips
1. **Fonts**: If you prefer a serif font, comment out the line `\renewcommand{\familydefault}{\sfdefault}` in `cv.tex`.
2. **Colors**: Modify the Hex values under the `% Color definitions` section to change the visual theme:
   - `primary`: Used for the main header name and section titles.
   - `secondary`: Used for job/degree titles and horizontal rules.
   - `textdark`: Used for the body text.
