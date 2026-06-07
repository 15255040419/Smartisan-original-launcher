.class public final enum Ld/n/f/a;
.super Ljava/lang/Enum;
.source "Intrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/n/f/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld/n/f/a;

.field public static final synthetic b:[Ld/n/f/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ld/n/f/a;

    new-instance v1, Ld/n/f/a;

    const/4 v2, 0x0

    const-string v3, "COROUTINE_SUSPENDED"

    invoke-direct {v1, v3, v2}, Ld/n/f/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld/n/f/a;->a:Ld/n/f/a;

    aput-object v1, v0, v2

    new-instance v1, Ld/n/f/a;

    const/4 v2, 0x1

    const-string v3, "UNDECIDED"

    invoke-direct {v1, v3, v2}, Ld/n/f/a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Ld/n/f/a;

    const/4 v2, 0x2

    const-string v3, "RESUMED"

    invoke-direct {v1, v3, v2}, Ld/n/f/a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    sput-object v0, Ld/n/f/a;->b:[Ld/n/f/a;

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

.method public static valueOf(Ljava/lang/String;)Ld/n/f/a;
    .locals 1

    const-class v0, Ld/n/f/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/n/f/a;

    return-object p0
.end method

.method public static values()[Ld/n/f/a;
    .locals 1

    sget-object v0, Ld/n/f/a;->b:[Ld/n/f/a;

    invoke-virtual {v0}, [Ld/n/f/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/n/f/a;

    return-object v0
.end method
