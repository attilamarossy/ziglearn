const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const eredmeny = fibonacci(8);

    try stdout.print("A rekurzió eredménye: {any}\n", .{eredmeny});
}

fn fibonacci(n: u16) u16 {
    if (n == 0 or n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

test "function recursion" {
    const x = fibonacci(10);
    try expect(x == 55);
}
