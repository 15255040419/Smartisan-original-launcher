.class final Lcom/google/common/collect/RegularImmutableTable$Values;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$Values;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$Values;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableTable$Values;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableTable$Values;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->size()I

    move-result p0

    return p0
.end method
