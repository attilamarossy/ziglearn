const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    var before: i16 = 5;
    var after: i16 = undefined;

    // multiple defers are executed in the reverse order
    {
        defer after *= 2;
        defer after = before + 2;
    }

    try stdout.print("Before: {d}, after: {d}\n", .{ before, after });
}
