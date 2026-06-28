.class Lcom/google/common/collect/Multisets$ImmutableEntry;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmutableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final count:I

.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    .line 254
    iput p2, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    const-string p0, "count"

    .line 255
    invoke-static {p2, p0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 266
    iget p0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    return p0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 261
    iget-object p0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public nextInBucket()Lcom/google/common/collect/Multisets$ImmutableEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
