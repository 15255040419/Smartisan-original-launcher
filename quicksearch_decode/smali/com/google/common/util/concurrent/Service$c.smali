.class public abstract enum Lcom/google/common/util/concurrent/Service$c;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/Service$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/Service$c;

.field public static final enum b:Lcom/google/common/util/concurrent/Service$c;

.field public static final enum c:Lcom/google/common/util/concurrent/Service$c;

.field public static final enum d:Lcom/google/common/util/concurrent/Service$c;

.field public static final enum e:Lcom/google/common/util/concurrent/Service$c;

.field public static final enum f:Lcom/google/common/util/concurrent/Service$c;

.field public static final synthetic g:[Lcom/google/common/util/concurrent/Service$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/Service$c$a;

    const/4 v1, 0x0

    const-string v2, "NEW"

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/Service$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->a:Lcom/google/common/util/concurrent/Service$c;

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/Service$c$b;

    const/4 v2, 0x1

    const-string v3, "STARTING"

    invoke-direct {v0, v3, v2}, Lcom/google/common/util/concurrent/Service$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->b:Lcom/google/common/util/concurrent/Service$c;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/Service$c$c;

    const/4 v3, 0x2

    const-string v4, "RUNNING"

    invoke-direct {v0, v4, v3}, Lcom/google/common/util/concurrent/Service$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->c:Lcom/google/common/util/concurrent/Service$c;

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/Service$c$d;

    const/4 v4, 0x3

    const-string v5, "STOPPING"

    invoke-direct {v0, v5, v4}, Lcom/google/common/util/concurrent/Service$c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->d:Lcom/google/common/util/concurrent/Service$c;

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/Service$c$e;

    const/4 v5, 0x4

    const-string v6, "TERMINATED"

    invoke-direct {v0, v6, v5}, Lcom/google/common/util/concurrent/Service$c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->e:Lcom/google/common/util/concurrent/Service$c;

    .line 6
    new-instance v0, Lcom/google/common/util/concurrent/Service$c$f;

    const/4 v6, 0x5

    const-string v7, "FAILED"

    invoke-direct {v0, v7, v6}, Lcom/google/common/util/concurrent/Service$c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->f:Lcom/google/common/util/concurrent/Service$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/common/util/concurrent/Service$c;

    .line 7
    sget-object v7, Lcom/google/common/util/concurrent/Service$c;->a:Lcom/google/common/util/concurrent/Service$c;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/common/util/concurrent/Service$c;->b:Lcom/google/common/util/concurrent/Service$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/util/concurrent/Service$c;->c:Lcom/google/common/util/concurrent/Service$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/util/concurrent/Service$c;->d:Lcom/google/common/util/concurrent/Service$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/util/concurrent/Service$c;->e:Lcom/google/common/util/concurrent/Service$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/util/concurrent/Service$c;->f:Lcom/google/common/util/concurrent/Service$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/common/util/concurrent/Service$c;->g:[Lcom/google/common/util/concurrent/Service$c;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/util/concurrent/Service$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Service$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/Service$c;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/Service$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/Service$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/Service$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/Service$c;->g:[Lcom/google/common/util/concurrent/Service$c;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/Service$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/Service$c;

    return-object v0
.end method
