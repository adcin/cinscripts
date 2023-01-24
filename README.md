# My collection of various scripts.

Download repo and make scripts executable:
```shell
git clone https://github.com/Cin-Hub/cinscripts.git && \
chmod 750 *.cin
```  

# Alternatively copy all \*.cin scripts to ~/bin

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
chmod 750 ~/git/cinscripts/*.cin
```  
**4. Copy the scripts to ~/bin**  
```bash
cp ~/git/cinscripts/*.cin ~/bin
```  
**5. Optional - Remove the ~/git/cinscripts directory**
```bash
rm -r ~/git/cinscripts
```  
**Steps 2-5 in one command:**  
```bash
git clone https://github.com/Cin-Hub/cinscripts.git ~/git/cinscripts && \
chmod 750 ~/git/cinscripts/*.cin && \
cp ~/git/cinscripts/*.cin ~/bin && \
rm -r ~/git/cinscripts
```  

# Index of scripts:  

- [myip.cin](myip.cin): Show current internet IPv4 and IPv6 by using the API from: [www.geojs.io](https://www.geojs.io)
