const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const szoveg = "árvíztűrő tükörfúrógép";
    const szam = @as(i32, 500);
    const egytized = tized(szam);

    try stdout.print("{any} {s}\n", .{ egytized, szoveg });
}

test "expect tized to get x/10" {
    try expect(tized(15) == 1);
}

fn tized(number: i32) i32 {
    return @divFloor(number, 10);
}
