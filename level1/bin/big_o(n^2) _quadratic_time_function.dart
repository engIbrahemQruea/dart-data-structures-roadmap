// ✨The Summary✨

// 🔥big O(n^2) Quadratic Time Complexity. 

// which is faster
// if input size = 100

// big O(1) → 1 operation.
// big O(n) → 100 operations.
// big O(n^2) → 100 × 100 = 10,000 operations.


// 📌if we have 100 users and 100 permissions that code will only take constant time O(1) because we used Bitwise AND with Bitmask.

// 	bool CheckAccessPermission(enPermissions Permission)
// 	{
// 		if (this->Permissions == enPermissions::eAll)
// 			return true;
// 		if ((Permission & this->Permissions) == Permission)
// 			//Bitwise AND → used for permission checking via Bitmask
// 			return true;
// 		else
// 			return false;

// 	}

// 🌟but if we use two nested loops, Big O will be O(n^2).


// 🔑as a Programmer you should always try to design algorithms with the smallest complexity possible:

// O(1) → best
// O(log n) → very efficient
// O(n) → acceptable
// O(n^2) → expensive and should be avoided if possible.


// استخدام الـ Extension لإضافة ميزة التحقق لأي رقم يمثل صلاحية
// extension PermissionChecker on int {
//   bool hasPermission(int bitmask) => (this & bitmask) == bitmask;
// }

// // الاستخدام
// const int read = 1;  // 0001
// const int write = 2; // 0010
// int userPermissions = 3; // 0011 (Read & Write)

// if (userPermissions.hasPermission(read)) {
//   print("Access Granted");
// }