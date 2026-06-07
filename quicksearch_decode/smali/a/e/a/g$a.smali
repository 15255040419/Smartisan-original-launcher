.class public final enum La/e/a/g$a;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/e/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/e/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/e/a/g$a;

.field public static final enum b:La/e/a/g$a;

.field public static final enum c:La/e/a/g$a;

.field public static final enum d:La/e/a/g$a;

.field public static final enum e:La/e/a/g$a;

.field public static final synthetic f:[La/e/a/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, La/e/a/g$a;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v2, v1}, La/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/g$a;->a:La/e/a/g$a;

    .line 2
    new-instance v0, La/e/a/g$a;

    const/4 v2, 0x1

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v2}, La/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/g$a;->b:La/e/a/g$a;

    .line 3
    new-instance v0, La/e/a/g$a;

    const/4 v3, 0x2

    const-string v4, "SLACK"

    invoke-direct {v0, v4, v3}, La/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/g$a;->c:La/e/a/g$a;

    .line 4
    new-instance v0, La/e/a/g$a;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, La/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/g$a;->d:La/e/a/g$a;

    .line 5
    new-instance v0, La/e/a/g$a;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, La/e/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/e/a/g$a;->e:La/e/a/g$a;

    const/4 v0, 0x5

    new-array v0, v0, [La/e/a/g$a;

    .line 6
    sget-object v6, La/e/a/g$a;->a:La/e/a/g$a;

    aput-object v6, v0, v1

    sget-object v1, La/e/a/g$a;->b:La/e/a/g$a;

    aput-object v1, v0, v2

    sget-object v1, La/e/a/g$a;->c:La/e/a/g$a;

    aput-object v1, v0, v3

    sget-object v1, La/e/a/g$a;->d:La/e/a/g$a;

    aput-object v1, v0, v4

    sget-object v1, La/e/a/g$a;->e:La/e/a/g$a;

    aput-object v1, v0, v5

    sput-object v0, La/e/a/g$a;->f:[La/e/a/g$a;

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

.method public static valueOf(Ljava/lang/String;)La/e/a/g$a;
    .locals 1

    .line 1
    const-class v0, La/e/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/e/a/g$a;

    return-object p0
.end method

.method public static values()[La/e/a/g$a;
    .locals 1

    .line 1
    sget-object v0, La/e/a/g$a;->f:[La/e/a/g$a;

    invoke-virtual {v0}, [La/e/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/e/a/g$a;

    return-object v0
.end method
