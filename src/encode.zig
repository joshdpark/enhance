/// arithmetic encode symbols
const alphabet = 256; // alphabet size is just u8 bytes

const Encoder = struct {
    symbols: []const u8, // symbols will just be strings for now
    freq: [alphabet]u16, // maximum frequency of (2^16) - 1
    low: u64,
    high: u64, // total number of symbols in a corpus

    fn init(symbols: []const u8) Encoder {
        return .{
            .symbols = symbols,
            .freq = @splat(0),
            .low = 0,
            .high = std.math.maxInt(u64),
        };
    }

    /// count up frequencies
    fn statistics(enc: Encoder) void {
        for (enc.symbols) |s| enc.freq[s] += 1;
        enc.high = enc.len;
    }

    fn encode_symbol(enc: Encoder) void {
        _ = enc;
    }
};

const std = @import("std");
