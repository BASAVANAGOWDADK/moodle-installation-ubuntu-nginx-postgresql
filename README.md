# Moodle Installation Guide (Ubuntu + Nginx + PostgreSQL)

This repository provides a step-by-step guide and all necessary files to install and configure **Moodle** on **Ubuntu** using **Nginx**, **PostgreSQL**, and **PHP 8.3**. This setup is optimized for performance, security, and maintainability.

---

## 📦 Repository Structure

```
Moodle-Installation/
├── Code-Files/
│   ├── moodle-config.php            # Moodle configuration file
│   └── moodle-nginx.conf            # Nginx configuration for Moodle
├── Misc-Files/
│   ├── moodledata-permissions.sh    # Script to fix Moodle data directory permissions
│   ├── php-max-input-vars-fix.txt   # Fix for max_input_vars issue in PHP
│   ├── nginx-php-fpm-permission-fix.txt   # Fix for Nginx & PHP-FPM permission errors
│   └── postgres-setup.sql           # SQL script for PostgreSQL setup
├── Script-Files/
│   └── install-moodle.sh            # Step-by-step Moodle installation script
├── Workflow-Docs/
│   └── Moodle-Installation.txt      # Contains detailed documentation and issue fixes
├── Folder-Purpose.txt               # Explanation of each folder and its contents
└── README.md                        # Project overview and usage info
```

---

## 🚀 Features
- Latest **Moodle** deployment on Ubuntu
- **Nginx** web server for performance
- **PostgreSQL** database
- Sample **nginx** and **PHP** configs
- Shell scripts and SQL files for automation

---

## 📚 Installation Steps

For the complete guide, refer to: [Moodle-Installation.txt](Workflow-Docs/Moodle-Installation.txt)

Quick summary:
```bash
1. Update Ubuntu & install dependencies
2. Configure PostgreSQL with moodle database & user
3. Clone Moodle and set permissions
4. Configure Nginx (virtual host)
5. Obtain SSL with Certbot
6. Run Moodle CLI installer
```

---

## ✅ Requirements
- Ubuntu 22.04+
- Nginx
- PostgreSQL
- PHP 8.3
- Moodle 4.2+ (Stable)

---

## 🛡 License
MIT License — use freely, modify, and contribute!

---

## 🤝 Contribute
Pull requests welcome! If you find issues or improvements, feel free to fork and contribute.

---

## 📩 Contact
Made with ❤️ by Basavanagowda D K — feel free to reach out for feedback or suggestions!

---

> ⭐ Star this repo if you found it useful!

