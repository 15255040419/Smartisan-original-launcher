.class public abstract enum Lb/c/a/b/c;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/c/a/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/c/a/b/c;

.field public static final enum b:Lb/c/a/b/c;

.field public static final enum c:Lb/c/a/b/c;

.field public static final synthetic d:[Lb/c/a/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lb/c/a/b/c$a;

    const/4 v1, 0x0

    const-string v2, "STRONG"

    invoke-direct {v0, v2, v1}, Lb/c/a/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/b/c;->a:Lb/c/a/b/c;

    .line 2
    new-instance v0, Lb/c/a/b/c$b;

    const/4 v2, 0x1

    const-string v3, "SOFT"

    invoke-direct {v0, v3, v2}, Lb/c/a/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/b/c;->b:Lb/c/a/b/c;

    .line 3
    new-instance v0, Lb/c/a/b/c$c;

    const/4 v3, 0x2

    const-string v4, "WEAK"

    invoke-direct {v0, v4, v3}, Lb/c/a/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/c/a/b/c;->c:Lb/c/a/b/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lb/c/a/b/c;

    .line 4
    sget-object v4, Lb/c/a/b/c;->a:Lb/c/a/b/c;

    aput-object v4, v0, v1

    sget-object v1, Lb/c/a/b/c;->b:Lb/c/a/b/c;

    aput-object v1, v0, v2

    sget-object v1, Lb/c/a/b/c;->c:Lb/c/a/b/c;

    aput-object v1, v0, v3

    sput-object v0, Lb/c/a/b/c;->d:[Lb/c/a/b/c;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILb/c/a/b/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lb/c/a/b/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/c/a/b/c;
    .locals 1

    .line 1
    const-class v0, Lb/c/a/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/c/a/b/c;

    return-object p0
.end method

.method public static values()[Lb/c/a/b/c;
    .locals 1

    .line 1
    sget-object v0, Lb/c/a/b/c;->d:[Lb/c/a/b/c;

    invoke-virtual {v0}, [Lb/c/a/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/c/a/b/c;

    return-object v0
.end method
