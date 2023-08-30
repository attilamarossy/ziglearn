// Ez jelenleg nem működik sajnos

const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    var szam: i64 = undefined;
    szam = ask_user();

    try stdout.print("A beírt szám: {any}\n", .{szam});
}

fn ask_user() !i64 {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    var buf: [10]u8 = undefined;

    try stdout.print("A number please: ", .{});

    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        return std.fmt.parseInt(i64, user_input, 10);
    } else {
        return @as(i64, 0);
    }
}
