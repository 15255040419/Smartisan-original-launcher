.class Lcom/google/common/collect/ImmutableMapValues$1;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMapValues;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final entryItr:Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ImmutableMapValues;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapValues;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapValues$1;->this$0:Lcom/google/common/collect/ImmutableMapValues;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 52
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMapValues$1;->this$0:Lcom/google/common/collect/ImmutableMapValues;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMapValues;->access$000(Lcom/google/common/collect/ImmutableMapValues;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapValues$1;->entryItr:Lcom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapValues$1;->entryItr:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapValues$1;->entryItr:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
