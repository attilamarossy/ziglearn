const std = @import("std");
const expect = @import("std").testing.expect;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const fizu = @as(i32, 53425);
    const segely = if (fizu < 75000) jutalom(fizu) else 0;
    try stdout.print("Fizu: {any}, jutalom: {any}\n", .{ fizu, segely });
}

test "expect jutalom to get x/10" {
    try expect(jutalom(15) == 1);
}

fn jutalom(number: i32) i32 {
    return @divFloor(number, 10);
}
