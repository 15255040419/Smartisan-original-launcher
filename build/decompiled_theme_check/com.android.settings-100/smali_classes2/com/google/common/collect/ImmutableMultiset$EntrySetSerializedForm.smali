.class Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method
