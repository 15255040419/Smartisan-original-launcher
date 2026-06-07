.class public final enum Lb/c/a/c/v$b;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/a/c/v$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/a/c/v$b;

.field public static final enum b:Lb/c/a/c/v$b;

.field public static final enum c:Lb/c/a/c/v$b;

.field public static final enum d:Lb/c/a/c/v$b;

.field public static final synthetic e:[Lb/c/a/c/v$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lb/c/a/c/v$b;

    const/4 v1, 0x0

    const-string v2, "READY"

    invoke-direct {v0, v2, v1}, Lb/c/a/c/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/c/v$b;->a:Lb/c/a/c/v$b;

    .line 2
    new-instance v0, Lb/c/a/c/v$b;

    const/4 v2, 0x1

    const-string v3, "NOT_READY"

    invoke-direct {v0, v3, v2}, Lb/c/a/c/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/c/v$b;->b:Lb/c/a/c/v$b;

    .line 3
    new-instance v0, Lb/c/a/c/v$b;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lb/c/a/c/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/c/v$b;->c:Lb/c/a/c/v$b;

    .line 4
    new-instance v0, Lb/c/a/c/v$b;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lb/c/a/c/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/c/v$b;->d:Lb/c/a/c/v$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/c/a/c/v$b;

    .line 5
    sget-object v5, Lb/c/a/c/v$b;->a:Lb/c/a/c/v$b;

    aput-object v5, v0, v1

    sget-object v1, Lb/c/a/c/v$b;->b:Lb/c/a/c/v$b;

    aput-object v1, v0, v2

    sget-object v1, Lb/c/a/c/v$b;->c:Lb/c/a/c/v$b;

    aput-object v1, v0, v3

    sget-object v1, Lb/c/a/c/v$b;->d:Lb/c/a/c/v$b;

    aput-object v1, v0, v4

    sput-object v0, Lb/c/a/c/v$b;->e:[Lb/c/a/c/v$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/a/c/v$b;
    .locals 1

    .line 1
    const-class v0, Lb/c/a/c/v$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/a/c/v$b;

    return-object p0
.end method

.method public static values()[Lb/c/a/c/v$b;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/c/v$b;->e:[Lb/c/a/c/v$b;

    invoke-virtual {v0}, [Lb/c/a/c/v$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/a/c/v$b;

    return-object v0
.end method
