.class final Lcom/google/common/collect/MultimapBuilder$2;
.super Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder;->linkedHashKeys(I)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$expectedKeys:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/google/common/collect/MultimapBuilder$2;->val$expectedKeys:I

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method createMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 123
    iget p0, p0, Lcom/google/common/collect/MultimapBuilder$2;->val$expectedKeys:I

    invoke-static {p0}, Lcom/google/common/collect/Platform;->newLinkedHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
