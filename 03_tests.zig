// zig test 03_tests.zig

const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const szoveg = "árvíztűrő tükörfúrógép";
    const szam = @as(i32, 5000);

    try stdout.print("{any} {s}\n", .{ szam, szoveg });
}

test "if statement" {
    const a = true;
    var x: u16 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }
    try expect(x == 1);
}
