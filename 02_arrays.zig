// Arrays are denoted by [N]T, where N is the number of elements in the array
// and T is the type of those elements (i.e., the array’s child type).

// For array literals, N may be replaced by _ to infer the size of the array.

const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };
    const length = a.len;

    try stdout.print("{any} {any}\n", .{ a, b });
    try stdout.print("{s} {s} ({any})\n", .{ a, b, length });
}
