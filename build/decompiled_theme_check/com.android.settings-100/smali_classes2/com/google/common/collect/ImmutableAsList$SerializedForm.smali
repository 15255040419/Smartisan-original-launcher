.class Lcom/google/common/collect/ImmutableAsList$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableAsList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableAsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final collection:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "*>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;->collection:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;->collection:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
