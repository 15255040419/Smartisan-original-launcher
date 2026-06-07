.class public final enum La/e/a/h/f$b;
.super Ljava/lang/Enum;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/e/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/e/a/h/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/e/a/h/f$b;

.field public static final enum b:La/e/a/h/f$b;

.field public static final enum c:La/e/a/h/f$b;

.field public static final enum d:La/e/a/h/f$b;

.field public static final synthetic e:[La/e/a/h/f$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, La/e/a/h/f$b;

    const/4 v1, 0x0

    const-string v2, "FIXED"

    invoke-direct {v0, v2, v1}, La/e/a/h/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    new-instance v0, La/e/a/h/f$b;

    const/4 v2, 0x1

    const-string v3, "WRAP_CONTENT"

    invoke-direct {v0, v3, v2}, La/e/a/h/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    new-instance v0, La/e/a/h/f$b;

    const/4 v3, 0x2

    const-string v4, "MATCH_CONSTRAINT"

    invoke-direct {v0, v4, v3}, La/e/a/h/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/h/f$b;->c:La/e/a/h/f$b;

    new-instance v0, La/e/a/h/f$b;

    const/4 v4, 0x3

    const-string v5, "MATCH_PARENT"

    invoke-direct {v0, v5, v4}, La/e/a/h/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/h/f$b;->d:La/e/a/h/f$b;

    const/4 v0, 0x4

    new-array v0, v0, [La/e/a/h/f$b;

    .line 2
    sget-object v5, La/e/a/h/f$b;->a:La/e/a/h/f$b;

    aput-object v5, v0, v1

    sget-object v1, La/e/a/h/f$b;->b:La/e/a/h/f$b;

    aput-object v1, v0, v2

    sget-object v1, La/e/a/h/f$b;->c:La/e/a/h/f$b;

    aput-object v1, v0, v3

    sget-object v1, La/e/a/h/f$b;->d:La/e/a/h/f$b;

    aput-object v1, v0, v4

    sput-object v0, La/e/a/h/f$b;->e:[La/e/a/h/f$b;

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

.method public static valueOf(Ljava/lang/String;)La/e/a/h/f$b;
    .locals 1

    .line 1
    const-class v0, La/e/a/h/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/e/a/h/f$b;

    return-object p0
.end method

.method public static values()[La/e/a/h/f$b;
    .locals 1

    .line 1
    sget-object v0, La/e/a/h/f$b;->e:[La/e/a/h/f$b;

    invoke-virtual {v0}, [La/e/a/h/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/e/a/h/f$b;

    return-object v0
.end method
