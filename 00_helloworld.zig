const std = @import("std");

pub fn main() !void {
    const name = "Árvíztűrő tükörfúrógép";
    const stdout = std.io.getStdOut().writer();

    try stdout.print("An expression with all Hungarian accents: {s}\n", .{name});
}
