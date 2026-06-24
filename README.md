# Naver Map Search PopClip Extension

This project is a PopClip extension for macOS that allows you to search selected text directly on Naver Map.

## Installation

1. Clone or download this repository.
2. Make sure the `zip` command is installed. The packaging script creates a `.popclipextz` archive with `zip`.
3. In the terminal, navigate to the project folder and run the following command to package the PopClip extension:

   ```bash
   ./package.sh
   ```

4. Double-click the generated `NaverMap.popclipextz` file to install it in PopClip.

## Packaging notes

- The generated `NaverMap.popclipextz` archive is a local build artifact and is intentionally ignored by Git.
- The packaging script removes the previous archive before building, omits macOS metadata files, and keeps zip metadata minimal for cleaner rebuilds.

## License

This project is licensed under the MIT License. You are free to use, modify, and distribute it. All responsibility for the use of this software lies with the user.

## Author

- Name: Sangin Lee
- Email: [silee9019@gmail.com](mailto:silee9019@gmail.com)
- GitHub: [github.com/2SANGIN](https://github.com/2SANGIN)
