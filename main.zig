const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});
}

fn fizzbuzz() void {
    var i: usize = 1;
    while (i < 16) {
        if (i % 15 == 0) {
            print("FizzBuzz\n", .{});
        } else if (i % 3 == 0) {
            print("Fizz\n", .{});
        } else if (i % 5 == 0) {
            print("Buzz\n", .{});
        } else {
            print("{d}\n", .{i});
        }
        i += 1;
    }
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
