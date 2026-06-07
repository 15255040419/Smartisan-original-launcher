.class public final enum La/l/b$b;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/l/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/l/b$b;

.field public static final enum b:La/l/b$b;

.field public static final enum c:La/l/b$b;

.field public static final enum d:La/l/b$b;

.field public static final enum e:La/l/b$b;

.field public static final synthetic f:[La/l/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, La/l/b$b;

    const/4 v1, 0x0

    const-string v2, "DESTROYED"

    invoke-direct {v0, v2, v1}, La/l/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l/b$b;->a:La/l/b$b;

    .line 2
    new-instance v0, La/l/b$b;

    const/4 v2, 0x1

    const-string v3, "INITIALIZED"

    invoke-direct {v0, v3, v2}, La/l/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l/b$b;->b:La/l/b$b;

    .line 3
    new-instance v0, La/l/b$b;

    const/4 v3, 0x2

    const-string v4, "CREATED"

    invoke-direct {v0, v4, v3}, La/l/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l/b$b;->c:La/l/b$b;

    .line 4
    new-instance v0, La/l/b$b;

    const/4 v4, 0x3

    const-string v5, "STARTED"

    invoke-direct {v0, v5, v4}, La/l/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l/b$b;->d:La/l/b$b;

    .line 5
    new-instance v0, La/l/b$b;

    const/4 v5, 0x4

    const-string v6, "RESUMED"

    invoke-direct {v0, v6, v5}, La/l/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/l/b$b;->e:La/l/b$b;

    const/4 v0, 0x5

    new-array v0, v0, [La/l/b$b;

    .line 6
    sget-object v6, La/l/b$b;->a:La/l/b$b;

    aput-object v6, v0, v1

    sget-object v1, La/l/b$b;->b:La/l/b$b;

    aput-object v1, v0, v2

    sget-object v1, La/l/b$b;->c:La/l/b$b;

    aput-object v1, v0, v3

    sget-object v1, La/l/b$b;->d:La/l/b$b;

    aput-object v1, v0, v4

    sget-object v1, La/l/b$b;->e:La/l/b$b;

    aput-object v1, v0, v5

    sput-object v0, La/l/b$b;->f:[La/l/b$b;

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

.method public static valueOf(Ljava/lang/String;)La/l/b$b;
    .locals 1

    .line 1
    const-class v0, La/l/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/l/b$b;

    return-object p0
.end method

.method public static values()[La/l/b$b;
    .locals 1

    .line 1
    sget-object v0, La/l/b$b;->f:[La/l/b$b;

    invoke-virtual {v0}, [La/l/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/l/b$b;

    return-object v0
.end method


# virtual methods
.method public a(La/l/b$b;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
