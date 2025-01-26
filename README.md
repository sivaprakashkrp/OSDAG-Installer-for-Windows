# OSDAG Installer for Microsoft Windows

## OSDAG

`OSDAG` is a cross-platform free/libre and open-source software for the design (and detailing) of steel structures, following the Indian Standard IS 800:2007. It allows the user to design steel connections, members and systems using a graphical user interface. The interactive GUI provides a 3D visualisation of the designed component and an option to export the CAD model to any drafting software for the creation of construction/fabrication drawings.

## Prerequisites to use the Installer

1. You must run it in a **Windows** machine with **Powershell** in it.

2. You need Internet Connection to run `installer.ps1` and `updateOSDAG.bat`

## Installing OSDAG
To install `OSDAG` with the given installer, follow the underlying steps:

1. Download this repository as a zip file and extract it in your desired location.

2. Open terminal, i.e., `powershell` in this location.

3. Run the script `installer.ps1`.

4. If the script is not executed, then you will have to change your `ExecutionPolicy` to `RemoteSigned`.
    > You can do that by executing the following command : <br/><br/>`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine` <br/><br/>in **Windows Powershell** with **Administrator Privileges**. <br/>
 Enter `y` to the prompted question.

5. When the script is executed, `Miniconda3` installer will be downloaded.

6. Make sure to read and follow the presented key points in the terminal.

7. The Miniconda installer will execute.

8. During the process, make sure to **ENABLE** the option to **ADD** `Miniconda` to `PATH`. Even though it says _Not Recommended_, it will be crucial to install `OSDAG`.

9. **DISABLE** the **to-view links** at the last page of installation to continue with installing `OSDAG`.

10. Go through the installation wizard and `Miniconda3` will be installed.

11. Then `MiKTeX` installer will be downloaded and executed.

12. **DISABLE** the **Check for Updates** as it will put a halt to installing `OSDAG`. You will be prompted to enable it when you open `MiKTeX` and you can do it then.

13. **UNCHECK** the **Tell Me More** box to continue with the installation process.

14. `OSDAG` will be installed with the help of `conda`. 

15. After `installer.ps1` is completely executed, Run `openOSDAG.bat` with **administrator privileges**.

16. Now you can enjoy `OSDAG`.

## Things to follow during Installation Process

1. While installing `Miniconda`, make sure to add `PATH` to **environment variables**.

2. Please **UNCHECK** the links in the final page.

3. While installing `MiKTeX`, make sure to **DISABLE** the **Check for Updates** and make sure to uncheck the tell me more box.

4. To work with `OSDAG`, run the `openOSDAG.bat` as **administrator**.

5. **Don't** close the opened command prompt window.

## Things to Know

1. This installation will not create a `OSDAG` icon in Start Menu or Desktop.

2. You can create a **shortcut** to `openOSDAG.bat` with **Administrator Privileges** enabled in advanced properties of the shortcut.

3. You can run the `updateOSDAG.bat` file with administrator privileges to update `OSDAG`.

## Improvements that can be done

1. Convert the .ps1 file to an executable file.

2. Create a Graphical User Interface (GUI) for the installation process

3. Make the OSDAG software as a stand-alone application so that it can be accessed as any Application

**Thank You!!**
---
