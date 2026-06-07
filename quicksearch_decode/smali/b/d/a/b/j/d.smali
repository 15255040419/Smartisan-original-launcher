.class public final enum Lb/d/a/b/j/d;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/d/a/b/j/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/d/a/b/j/d;

.field public static final enum b:Lb/d/a/b/j/d;

.field public static final enum c:Lb/d/a/b/j/d;

.field public static final enum d:Lb/d/a/b/j/d;

.field public static final enum e:Lb/d/a/b/j/d;

.field public static final synthetic f:[Lb/d/a/b/j/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lb/d/a/b/j/d;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lb/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    .line 2
    sput-object v0, Lb/d/a/b/j/d;->a:Lb/d/a/b/j/d;

    .line 3
    new-instance v0, Lb/d/a/b/j/d;

    const/4 v2, 0x1

    const-string v3, "IN_SAMPLE_POWER_OF_2"

    invoke-direct {v0, v3, v2}, Lb/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    .line 4
    sput-object v0, Lb/d/a/b/j/d;->b:Lb/d/a/b/j/d;

    .line 5
    new-instance v0, Lb/d/a/b/j/d;

    const/4 v3, 0x2

    const-string v4, "IN_SAMPLE_INT"

    invoke-direct {v0, v4, v3}, Lb/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    .line 6
    sput-object v0, Lb/d/a/b/j/d;->c:Lb/d/a/b/j/d;

    .line 7
    new-instance v0, Lb/d/a/b/j/d;

    const/4 v4, 0x3

    const-string v5, "EXACTLY"

    invoke-direct {v0, v5, v4}, Lb/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    .line 8
    sput-object v0, Lb/d/a/b/j/d;->d:Lb/d/a/b/j/d;

    .line 9
    new-instance v0, Lb/d/a/b/j/d;

    const/4 v5, 0x4

    const-string v6, "EXACTLY_STRETCHED"

    invoke-direct {v0, v6, v5}, Lb/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v0, Lb/d/a/b/j/d;->e:Lb/d/a/b/j/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/d/a/b/j/d;

    .line 11
    sget-object v6, Lb/d/a/b/j/d;->a:Lb/d/a/b/j/d;

    aput-object v6, v0, v1

    sget-object v1, Lb/d/a/b/j/d;->b:Lb/d/a/b/j/d;

    aput-object v1, v0, v2

    sget-object v1, Lb/d/a/b/j/d;->c:Lb/d/a/b/j/d;

    aput-object v1, v0, v3

    sget-object v1, Lb/d/a/b/j/d;->d:Lb/d/a/b/j/d;

    aput-object v1, v0, v4

    sget-object v1, Lb/d/a/b/j/d;->e:Lb/d/a/b/j/d;

    aput-object v1, v0, v5

    sput-object v0, Lb/d/a/b/j/d;->f:[Lb/d/a/b/j/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/d/a/b/j/d;
    .locals 1

    .line 1
    const-class v0, Lb/d/a/b/j/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/d/a/b/j/d;

    return-object p0
.end method

.method public static values()[Lb/d/a/b/j/d;
    .locals 4

    .line 1
    sget-object v0, Lb/d/a/b/j/d;->f:[Lb/d/a/b/j/d;

    array-length v1, v0

    new-array v2, v1, [Lb/d/a/b/j/d;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
