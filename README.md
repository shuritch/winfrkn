# Just my GoodbyDPI setup for Windows machines

## Installation

> [!CAUTION] 
> 
> Remind to run all `*.cmd` files as admin, this will be security issue but who cares for windows systems, right ?

1. Download repository from [here](https://github.com/sashapop10/winfrkn/archive/refs/heads/main.zip) 
2. Run `update.cmd` script
3. Run `test.cmd`, dont close yet - test how it works with youtube in incognito mode.
    1. If it works out of the box - you are happy one, skip to chapter **4**  
    2. If you unlucky one, you need to open same file at your favorite editor, like windows notepad 
    3. You need to find `start "" goodbyedpi.exe` code fragment
    4. Try to replace its `-6 -e1` with other possible options: 
        - `-9` 
        - `-9 -e1 -f1` 
        - `-5 -e1`
        - `-6 -e1` 
4. (optional) If you want to run this at startup - close current script if such is  running and run `setup.cmd`