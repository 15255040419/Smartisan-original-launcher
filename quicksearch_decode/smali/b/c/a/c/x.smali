.class public final enum Lb/c/a/c/x;
.super Ljava/lang/Enum;
.source "BoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/a/c/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/a/c/x;

.field public static final enum b:Lb/c/a/c/x;

.field public static final synthetic c:[Lb/c/a/c/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/c/a/c/x;

    const/4 v1, 0x0

    const-string v2, "OPEN"

    invoke-direct {v0, v2, v1, v1}, Lb/c/a/c/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb/c/a/c/x;->a:Lb/c/a/c/x;

    .line 2
    new-instance v0, Lb/c/a/c/x;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2, v2}, Lb/c/a/c/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb/c/a/c/x;->b:Lb/c/a/c/x;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/c/a/c/x;

    .line 3
    sget-object v3, Lb/c/a/c/x;->a:Lb/c/a/c/x;

    aput-object v3, v0, v1

    sget-object v1, Lb/c/a/c/x;->b:Lb/c/a/c/x;

    aput-object v1, v0, v2

    sput-object v0, Lb/c/a/c/x;->c:[Lb/c/a/c/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/a/c/x;
    .locals 1

    .line 1
    const-class v0, Lb/c/a/c/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/a/c/x;

    return-object p0
.end method

.method public static values()[Lb/c/a/c/x;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/c/x;->c:[Lb/c/a/c/x;

    invoke-virtual {v0}, [Lb/c/a/c/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/a/c/x;

    return-object v0
.end method
