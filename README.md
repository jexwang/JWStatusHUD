# JWStatusHUD
<span style="color:red">**Warning: The framework is not yet complete.**</span>

A simple indicator of loading, success and failure.

The usage is similar to the Alert API like:
```
VStack {
	// Some View
}
.statusHUD(item: $statusHUDItem)
.alert(item: $alertItem) { (item) -> Alert in
	Alert(title: item.title, message: item.message)
}
```

You can set the number of seconds to turn off the HUD:
```
statusHUDItem  = JWStatusHUDItem(type: .success, message: "Login Succeeded", dismissAfter: 1)
```

and completion:
```
JWStatusHUDItem(type: .success, message: "Login Succeeded", dismissAfter: 1) {
	print("Already login")
}
```

But now, I use **ZStack** to achieve this function, which is not a good way...
In the future, I want to use Window for this HUD.
