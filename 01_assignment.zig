const std = @import("std");
//const unicode = @import("std").unicode;

pub fn main() !void {
    const constant: i32 = 5; // signed 32-bit constant
    var variable: u32 = 5000; // unsigned 32-bit variable

    // @as performs an explicit type coercion
    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);

    const stdout = std.io.getStdOut().writer();

    try stdout.print("Constant: {any}\nVariable: {any}\n", .{ constant, variable });
    try stdout.print("Inferred constant: {any}\nInferred variable: {any}\n", .{ inferred_constant, inferred_variable });
}
