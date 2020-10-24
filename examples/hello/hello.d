module hello;

import arsd.webassembly;
import std.stdio;

void main() {
	int num = eval!int(q{ console.log("hi " + $1 + ", " + $0); this.omg = "yay"; return 52; }, 42, "hello world");
	eval(q{ console.log("asdasd " + this.omg + " " + $0); }, num);

	NativeHandle body = eval!NativeHandle("return document.body");
	body.methods.insertAdjacentHTML!void("beforeend", "<span>hello world</span>");
	eval(`console.log($0)`, body.properties.innerHTML!string);

	string tmp = "hello" ~ " world !!!";
	writeln(tmp);
}
