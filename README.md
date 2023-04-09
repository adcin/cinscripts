# Various scripts:

- [myip.cin.sh](myip.cin.sh): Show current internet IPv4 and IPv6 by using the API from: [www.geojs.io](https://www.geojs.io)
- [dot_countdown.cin.sh](dot_countdown.cin.sh): Countdown function with dots.

# Download repo and make scripts executable:
```shell
git clone https://github.com/Cin-Hub/cinscripts.git && \
chmod 750 *.cin.sh
```  

# Alternatively copy all \*.cin.sh scripts to ~/bin

Use the ~/bin folder for your private scripts, so you can execute them from everywhere.  

**1. Check .profile, if PATH to ~/bin is set**
```bash
nano ~/.profile
```
Isert or uncomment the following code if neccesary:
```bash
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
```  
_To activate the changes in PATH, you should relog._  

**2. Clone the repository**  
```bash
git clone https://github.com/Cin-Hub/cinscripts.git ~/git/cinscripts
```  
**3. Make scripts executable**  
```bash
chmod 750 ~/git/cinscripts/*.cin.sh
```  
**4. Copy the scripts to ~/bin**  
```bash
cp ~/git/cinscripts/*.cin.sh ~/bin
```  
**5. Optional - Remove the ~/git/cinscripts directory**
```bash
rm -r ~/git/cinscripts
```  
**Steps 2-5 in one command:**  
```bash
git clone https://github.com/Cin-Hub/cinscripts.git ~/git/cinscripts && \
chmod 750 ~/git/cinscripts/*.cin.sh && \
cp ~/git/cinscripts/*.cin.sh ~/bin && \
rm -r ~/git/cinscripts
```  
