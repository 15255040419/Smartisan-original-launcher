.class public final enum Lsmartisan/widget/Title$f;
.super Ljava/lang/Enum;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/Title;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsmartisan/widget/Title$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lsmartisan/widget/Title$f;

.field public static final enum b:Lsmartisan/widget/Title$f;

.field public static final enum c:Lsmartisan/widget/Title$f;

.field public static final enum d:Lsmartisan/widget/Title$f;

.field public static final synthetic e:[Lsmartisan/widget/Title$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lsmartisan/widget/Title$f;

    const/4 v1, 0x0

    const-string v2, "BLUE"

    invoke-direct {v0, v2, v1}, Lsmartisan/widget/Title$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$f;->a:Lsmartisan/widget/Title$f;

    .line 2
    new-instance v0, Lsmartisan/widget/Title$f;

    const/4 v2, 0x1

    const-string v3, "BLUE_CORNER"

    invoke-direct {v0, v3, v2}, Lsmartisan/widget/Title$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$f;->b:Lsmartisan/widget/Title$f;

    .line 3
    new-instance v0, Lsmartisan/widget/Title$f;

    const/4 v3, 0x2

    const-string v4, "BLUE_OPAQUE"

    invoke-direct {v0, v4, v3}, Lsmartisan/widget/Title$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$f;->c:Lsmartisan/widget/Title$f;

    .line 4
    new-instance v0, Lsmartisan/widget/Title$f;

    const/4 v4, 0x3

    const-string v5, "NORMAL"

    invoke-direct {v0, v5, v4}, Lsmartisan/widget/Title$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsmartisan/widget/Title$f;->d:Lsmartisan/widget/Title$f;

    const/4 v0, 0x4

    new-array v0, v0, [Lsmartisan/widget/Title$f;

    .line 5
    sget-object v5, Lsmartisan/widget/Title$f;->a:Lsmartisan/widget/Title$f;

    aput-object v5, v0, v1

    sget-object v1, Lsmartisan/widget/Title$f;->b:Lsmartisan/widget/Title$f;

    aput-object v1, v0, v2

    sget-object v1, Lsmartisan/widget/Title$f;->c:Lsmartisan/widget/Title$f;

    aput-object v1, v0, v3

    sget-object v1, Lsmartisan/widget/Title$f;->d:Lsmartisan/widget/Title$f;

    aput-object v1, v0, v4

    sput-object v0, Lsmartisan/widget/Title$f;->e:[Lsmartisan/widget/Title$f;

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

.method public static valueOf(Ljava/lang/String;)Lsmartisan/widget/Title$f;
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/Title$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsmartisan/widget/Title$f;

    return-object p0
.end method

.method public static values()[Lsmartisan/widget/Title$f;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/Title$f;->e:[Lsmartisan/widget/Title$f;

    invoke-virtual {v0}, [Lsmartisan/widget/Title$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsmartisan/widget/Title$f;

    return-object v0
.end method
