# Remove-Librarys

Remove-Librarys is a convenient and automated script for removing all installed libraries on a Linux system. It is designed to provide developers and users with a clean environment to test their own code or troubleshoot issues related to conflicting or problematic libraries.

## Features

- Removes all installed libraries on a Linux system
- Helps test code on a clean Linux environment
- Troubleshoot library-related issues by reinstalling necessary libraries and testing the system

## Usage

1. Download the script:
   ```bash
   $ wget https://github.com/Brainhub24/Remove-Librarys/remove_libs.sh
   ```

2. Give execute permission to the script:
   ```bash
   $ chmod +x remove_libs.sh
   ```
   
3. Run the script with root privileges:
   ```bash
   $ sudo ./remove_libs.sh
   ```
   
4. The script will automatically remove all installed libraries on your system. Please note that this action cannot be undone, so proceed with caution.

## Examples
Remove all installed libraries:
   ```bash
   $ sudo ./remove_libs.sh
   ```

Test your code on a clean Linux environment:
   ```bash
   $ sudo ./remove_libs.sh
   $ # Install only the required libraries for your code
   $ # Run your code and verify its behavior without interference from other libraries
   ```

Troubleshoot library-related issues:
   ```bash
   $ sudo ./remove_libs.sh
   $ # Reinstall the necessary libraries or specific versions
   $ # Test the system with the reinstalled libraries to identify any conflicts or issues
   ```

## License
Remove-Librarys is licensed under the GPL-3.0 License.

## Code of Conduct
We expect all contributors and users of Remove-Librarys to adhere to the Code of Conduct. Please make sure you are familiar with its guidelines when participating in this project.

## Contact
For any questions or suggestions, please feel free to reach out to us at github@brainhub24.com.

## Contributing
We welcome contributions! If you find any issues or have ideas for improvements, please create a pull request or open an issue on the GitHub repository.
