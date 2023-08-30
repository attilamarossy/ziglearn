const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string, 0..) |character, index| {
        std.debug.print("{d} {c}\n", .{ index, character });
    }

    for (string) |character| {
        std.debug.print("{c}\n", .{character});
    }

    for (string, 0..) |_, index| {
        std.debug.print("{d} (index only)\n", .{index});
    }

    for (string) |_| {}

    for (0..10) |i| {
        std.debug.print("{d}\n", .{i});
    }
}
