# .dotfiles

Arch Linux Security:

    Lynis (Security Auditing Tool):
        Lynis is a powerful security auditing tool for Linux.

        ```
        sudo pacman -S lynis
        sudo lynis audit system

        ```

Malware and Rootkit Detection:

    chkrootkit:
        scans for rootkit in your system.

        ```
        sudo pacman -S chkrootkit
        sudo chkrootkit
        ```

    Rkhunter:
        Detects rootkits, backdoors, and exploits.
        ```
        sudo pacman -S rkhunter
        sudo rkhunter --update
        sudo rkhunter --checkall
        ```

Network Security Scan
    Nmap:
        scans for open ports.

        ```
        sudo pacman -S nmap
        sudo nmap -sS -Pn -T4 <your-ip>
        ```

    fail2Ban:
        it prevents bruteforce attack on network.
        
        ```
        sudo pacman -S fail2ban
        sudo systemctl enable --now fail2ban
        ```

File Integrity Check:

    AIDE (Advanced Intrusion Detection Environment):
        Checks for unauthorized file modifications.
        ```
        sudo pacman -S aide
        sudo aide --init
        sudo mv /var/lib/aide/aide.db.new /var/lib/aide/aide.db
        sudo aide --check
        ```

Kernel Security Check:
    Check for Vulnerabilities:
        Ensures Address Space Layout Randomization (ASLR) is enabled (2 is the best setting).
        ```
        sudo pacman -S linux-hardened
        cat /proc/sys/kernel/randomize_va_space
        ```