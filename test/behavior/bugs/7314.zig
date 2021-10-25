test "issue 7314" {
    const U = @Type(.{
        .Union = .{
            .layout = .Auto,
            .tag_type = null,
            .fields = &.{
                .{
                    .name = "i32",
                    .field_type = i32,
                    .alignment = @alignOf(i32),
                },
            },
            .decls = &.{},
        },
    });

    const x: *U = undefined;
    _ = x; // unused
}
