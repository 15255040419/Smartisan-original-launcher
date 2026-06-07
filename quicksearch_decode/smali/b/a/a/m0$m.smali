.class public final enum Lb/a/a/m0$m;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/a/m0$m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/a/a/m0$m;

.field public static final enum c:Lb/a/a/m0$m;

.field public static final d:[Ljava/lang/String;

.field public static final synthetic e:[Lb/a/a/m0$m;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/a/a/m0$m;

    const/4 v1, 0x0

    const-string v2, "corpus"

    invoke-direct {v0, v2, v1}, Lb/a/a/m0$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$m;->b:Lb/a/a/m0$m;

    .line 2
    new-instance v0, Lb/a/a/m0$m;

    const/4 v2, 0x1

    const-string v3, "total_clicks"

    invoke-direct {v0, v3, v2}, Lb/a/a/m0$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/m0$m;->c:Lb/a/a/m0$m;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/a/m0$m;

    .line 3
    sget-object v3, Lb/a/a/m0$m;->b:Lb/a/a/m0$m;

    aput-object v3, v0, v1

    sget-object v1, Lb/a/a/m0$m;->c:Lb/a/a/m0$m;

    aput-object v1, v0, v2

    sput-object v0, Lb/a/a/m0$m;->e:[Lb/a/a/m0$m;

    .line 4
    invoke-static {}, Lb/a/a/m0$m;->a()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/m0$m;->d:[Ljava/lang/String;

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

    const-string p2, "sourcetotals."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/m0$m;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lb/a/a/m0$m;->values()[Lb/a/a/m0$m;

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

    iget-object v3, v3, Lb/a/a/m0$m;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/m0$m;
    .locals 1

    .line 1
    const-class v0, Lb/a/a/m0$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/a/m0$m;

    return-object p0
.end method

.method public static values()[Lb/a/a/m0$m;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/m0$m;->e:[Lb/a/a/m0$m;

    invoke-virtual {v0}, [Lb/a/a/m0$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/m0$m;

    return-object v0
.end method
