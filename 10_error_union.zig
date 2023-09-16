const std = @import("std");
const expect = @import("std").testing.expect;

// error set is like an enum
const DivisionError = error{
    DivisionByZero,
};

pub fn main() !void {
    const res = division(10, 0) catch |err| {
        std.debug.print("Caught an error: {}\n", .{err});
        return;
    };

    std.debug.print("Number: {}\n", .{res});
}

test "division test" {
    // try expect(division(10, 2) == 5);
    try expect(division(10, 0) == error.DivisionByZero);
    division(10, 0) catch |err| {
        try expect(err == DivisionError.DivisionByZero);
        return;
    };
}

// payload capturing with union type
fn division(numerator: i32, denominator: i32) DivisionError!i32 {
    if (denominator == 0) return DivisionError.DivisionByZero;
    return @divFloor(numerator, denominator);
}
