.class public final enum Le/a/z1/a$c;
.super Ljava/lang/Enum;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/z1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/z1/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/z1/a$c;

.field public static final enum b:Le/a/z1/a$c;

.field public static final enum c:Le/a/z1/a$c;

.field public static final enum d:Le/a/z1/a$c;

.field public static final enum e:Le/a/z1/a$c;

.field public static final synthetic f:[Le/a/z1/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Le/a/z1/a$c;

    new-instance v1, Le/a/z1/a$c;

    const/4 v2, 0x0

    const-string v3, "CPU_ACQUIRED"

    invoke-direct {v1, v3, v2}, Le/a/z1/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/z1/a$c;->a:Le/a/z1/a$c;

    aput-object v1, v0, v2

    new-instance v1, Le/a/z1/a$c;

    const/4 v2, 0x1

    const-string v3, "BLOCKING"

    invoke-direct {v1, v3, v2}, Le/a/z1/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/z1/a$c;->b:Le/a/z1/a$c;

    aput-object v1, v0, v2

    new-instance v1, Le/a/z1/a$c;

    const/4 v2, 0x2

    const-string v3, "PARKING"

    invoke-direct {v1, v3, v2}, Le/a/z1/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/z1/a$c;->c:Le/a/z1/a$c;

    aput-object v1, v0, v2

    new-instance v1, Le/a/z1/a$c;

    const/4 v2, 0x3

    const-string v3, "DORMANT"

    invoke-direct {v1, v3, v2}, Le/a/z1/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/z1/a$c;->d:Le/a/z1/a$c;

    aput-object v1, v0, v2

    new-instance v1, Le/a/z1/a$c;

    const/4 v2, 0x4

    const-string v3, "TERMINATED"

    invoke-direct {v1, v3, v2}, Le/a/z1/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/z1/a$c;->e:Le/a/z1/a$c;

    aput-object v1, v0, v2

    sput-object v0, Le/a/z1/a$c;->f:[Le/a/z1/a$c;

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

.method public static valueOf(Ljava/lang/String;)Le/a/z1/a$c;
    .locals 1

    const-class v0, Le/a/z1/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/z1/a$c;

    return-object p0
.end method

.method public static values()[Le/a/z1/a$c;
    .locals 1

    sget-object v0, Le/a/z1/a$c;->f:[Le/a/z1/a$c;

    invoke-virtual {v0}, [Le/a/z1/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/z1/a$c;

    return-object v0
.end method
