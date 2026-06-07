.class public final synthetic Le/a/b0;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Le/a/c0;->values()[Le/a/c0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Le/a/b0;->a:[I

    sget-object v0, Le/a/b0;->a:[I

    sget-object v1, Le/a/c0;->a:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Le/a/b0;->a:[I

    sget-object v1, Le/a/c0;->c:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Le/a/b0;->a:[I

    sget-object v1, Le/a/c0;->d:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Le/a/b0;->a:[I

    sget-object v1, Le/a/c0;->b:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Le/a/c0;->values()[Le/a/c0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Le/a/b0;->b:[I

    sget-object v0, Le/a/b0;->b:[I

    sget-object v1, Le/a/c0;->a:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Le/a/b0;->b:[I

    sget-object v1, Le/a/c0;->c:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Le/a/b0;->b:[I

    sget-object v1, Le/a/c0;->d:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Le/a/b0;->b:[I

    sget-object v1, Le/a/c0;->b:Le/a/c0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
