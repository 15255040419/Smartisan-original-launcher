.class public final enum Lc/a/a/a;
.super Ljava/lang/Enum;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/a/a/a;

.field public static final enum b:Lc/a/a/a;

.field public static final enum c:Lc/a/a/a;

.field public static final enum d:Lc/a/a/a;

.field public static final synthetic e:[Lc/a/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc/a/a/a;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v2, v1}, Lc/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a;->a:Lc/a/a/a;

    .line 2
    new-instance v0, Lc/a/a/a;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v2}, Lc/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a;->b:Lc/a/a/a;

    .line 3
    new-instance v0, Lc/a/a/a;

    const/4 v3, 0x2

    const-string v4, "MAYBE"

    invoke-direct {v0, v4, v3}, Lc/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a;->c:Lc/a/a/a;

    .line 4
    new-instance v0, Lc/a/a/a;

    const/4 v4, 0x3

    const-string v5, "NEVER"

    invoke-direct {v0, v5, v4}, Lc/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/a;->d:Lc/a/a/a;

    const/4 v0, 0x4

    new-array v0, v0, [Lc/a/a/a;

    .line 5
    sget-object v5, Lc/a/a/a;->a:Lc/a/a/a;

    aput-object v5, v0, v1

    sget-object v1, Lc/a/a/a;->b:Lc/a/a/a;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/a;->c:Lc/a/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/a;->d:Lc/a/a/a;

    aput-object v1, v0, v4

    sput-object v0, Lc/a/a/a;->e:[Lc/a/a/a;

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

.method public static valueOf(Ljava/lang/String;)Lc/a/a/a;
    .locals 1

    .line 1
    const-class v0, Lc/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/a;

    return-object p0
.end method

.method public static values()[Lc/a/a/a;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/a;->e:[Lc/a/a/a;

    invoke-virtual {v0}, [Lc/a/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/a;

    return-object v0
.end method
