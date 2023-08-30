const std = @import("std");
//const unicode = @import("std").unicode;

pub fn main() !void {
    const name = "Árvíztűrő tükörfúrógép";
    const nev = "Attila Marossy";
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Hello, {s} {s}!\n", .{ name, nev });
}
