# BASH Programming Language Notes

<!-- TOC -->

- [BASH Programming Language Notes](#bash-programming-language-notes)
- [Top Line Script](#top-line-script)
- [Existence of Files](#existence-of-files)

<!-- /TOC -->

# Top Line Script
```bash
#!/bin/bash
```
# Existence of Files
```bash
[ ! -f /etc/foo ] && echo "File does not exist"
```

OR

```bash
#!/bin/bash
file="/.config/backup.cfg"
if [ ! -f "$file" ]
then
    echo "$0: File '${file}' not found."
fi
```

[Reference](https://www.cyberciti.biz/tips/find-out-if-file-exists-with-conditional-expressions.html)