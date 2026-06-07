.class public final enum Lb/d/a/b/j/g;
.super Ljava/lang/Enum;
.source "QueueProcessingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/d/a/b/j/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/d/a/b/j/g;

.field public static final enum b:Lb/d/a/b/j/g;

.field public static final synthetic c:[Lb/d/a/b/j/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/d/a/b/j/g;

    const/4 v1, 0x0

    const-string v2, "FIFO"

    invoke-direct {v0, v2, v1}, Lb/d/a/b/j/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d/a/b/j/g;->a:Lb/d/a/b/j/g;

    new-instance v0, Lb/d/a/b/j/g;

    const/4 v2, 0x1

    const-string v3, "LIFO"

    invoke-direct {v0, v3, v2}, Lb/d/a/b/j/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/d/a/b/j/g;->b:Lb/d/a/b/j/g;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/d/a/b/j/g;

    .line 2
    sget-object v3, Lb/d/a/b/j/g;->a:Lb/d/a/b/j/g;

    aput-object v3, v0, v1

    sget-object v1, Lb/d/a/b/j/g;->b:Lb/d/a/b/j/g;

    aput-object v1, v0, v2

    sput-object v0, Lb/d/a/b/j/g;->c:[Lb/d/a/b/j/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/d/a/b/j/g;
    .locals 1

    .line 1
    const-class v0, Lb/d/a/b/j/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/d/a/b/j/g;

    return-object p0
.end method

.method public static values()[Lb/d/a/b/j/g;
    .locals 4

    .line 1
    sget-object v0, Lb/d/a/b/j/g;->c:[Lb/d/a/b/j/g;

    array-length v1, v0

    new-array v2, v1, [Lb/d/a/b/j/g;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
