.class public abstract enum Lcom/google/common/collect/MapMakerInternalMap$n;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/MapMakerInternalMap$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/MapMakerInternalMap$n;

.field public static final enum b:Lcom/google/common/collect/MapMakerInternalMap$n;

.field public static final synthetic c:[Lcom/google/common/collect/MapMakerInternalMap$n;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$n$a;

    const/4 v1, 0x0

    const-string v2, "STRONG"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap$n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 2
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$n$b;

    const/4 v2, 0x1

    const-string v3, "WEAK"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/MapMakerInternalMap$n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->b:Lcom/google/common/collect/MapMakerInternalMap$n;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/MapMakerInternalMap$n;

    .line 3
    sget-object v3, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$n;->b:Lcom/google/common/collect/MapMakerInternalMap$n;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:[Lcom/google/common/collect/MapMakerInternalMap$n;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/MapMakerInternalMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$n;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->c:[Lcom/google/common/collect/MapMakerInternalMap$n;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMakerInternalMap$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lb/c/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/a/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
