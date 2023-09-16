const std = @import("std");
const expect = @import("std").testing.expect;

fn maybeError(input: i32) !i32 {
    if (input < 0) return error.NegativeInput;
    return input;
}

pub fn main() !void {
    const input = -10;
    const number = try maybeError(input);
    std.debug.print("Number: {}\n", .{number});
}

test "expect tized to get x/10" {
    try expect(tized(15) == 1);
}

fn tized(number: i32) i32 {
    return @divFloor(number, 10);
}
