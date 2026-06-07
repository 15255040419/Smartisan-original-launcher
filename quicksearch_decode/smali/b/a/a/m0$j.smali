.class public final enum Lb/a/a/m0$j;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/a/m0$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/a/a/m0$j;

.field public static final enum c:Lb/a/a/m0$j;

.field public static final enum d:Lb/a/a/m0$j;

.field public static final enum e:Lb/a/a/m0$j;

.field public static final enum f:Lb/a/a/m0$j;

.field public static final synthetic g:[Lb/a/a/m0$j;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lb/a/a/m0$j;

    const/4 v1, 0x0

    const-string v2, "_id"

    invoke-direct {v0, v2, v1}, Lb/a/a/m0$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$j;->b:Lb/a/a/m0$j;

    .line 2
    new-instance v0, Lb/a/a/m0$j;

    const/4 v2, 0x1

    const-string v3, "intent_key"

    invoke-direct {v0, v3, v2}, Lb/a/a/m0$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$j;->c:Lb/a/a/m0$j;

    .line 3
    new-instance v0, Lb/a/a/m0$j;

    const/4 v3, 0x2

    const-string v4, "query"

    invoke-direct {v0, v4, v3}, Lb/a/a/m0$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$j;->d:Lb/a/a/m0$j;

    .line 4
    new-instance v0, Lb/a/a/m0$j;

    const/4 v4, 0x3

    const-string v5, "hit_time"

    invoke-direct {v0, v5, v4}, Lb/a/a/m0$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    .line 5
    new-instance v0, Lb/a/a/m0$j;

    const/4 v5, 0x4

    const-string v6, "corpus"

    invoke-direct {v0, v6, v5}, Lb/a/a/m0$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$j;->f:Lb/a/a/m0$j;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/a/a/m0$j;

    .line 6
    sget-object v6, Lb/a/a/m0$j;->b:Lb/a/a/m0$j;

    aput-object v6, v0, v1

    sget-object v1, Lb/a/a/m0$j;->c:Lb/a/a/m0$j;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/m0$j;->d:Lb/a/a/m0$j;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/m0$j;->e:Lb/a/a/m0$j;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/m0$j;->f:Lb/a/a/m0$j;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/a/m0$j;->g:[Lb/a/a/m0$j;

    .line 7
    invoke-static {}, Lb/a/a/m0$j;->a()[Ljava/lang/String;

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

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clicklog."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/m0$j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lb/a/a/m0$j;->values()[Lb/a/a/m0$j;

    move-result-object v0

    .line 2
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 4
    aget-object v3, v0, v2

    iget-object v3, v3, Lb/a/a/m0$j;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/m0$j;
    .locals 1

    .line 1
    const-class v0, Lb/a/a/m0$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/a/m0$j;

    return-object p0
.end method

.method public static values()[Lb/a/a/m0$j;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/m0$j;->g:[Lb/a/a/m0$j;

    invoke-virtual {v0}, [Lb/a/a/m0$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/m0$j;

    return-object v0
.end method
