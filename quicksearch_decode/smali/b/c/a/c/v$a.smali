.class public synthetic Lb/c/a/c/v$a;
.super Ljava/lang/Object;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lb/c/a/c/v$b;->values()[Lb/c/a/c/v$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lb/c/a/c/v$a;->a:[I

    :try_start_0
    sget-object v0, Lb/c/a/c/v$a;->a:[I

    sget-object v1, Lb/c/a/c/v$b;->c:Lb/c/a/c/v$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lb/c/a/c/v$a;->a:[I

    sget-object v1, Lb/c/a/c/v$b;->a:Lb/c/a/c/v$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
