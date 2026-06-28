.class public final Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/icu/text/AlphabeticIndex$Bucket<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final buckets:Landroid/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final collatorPrimaryOnly:Landroid/icu/text/Collator;


# direct methods
.method private constructor <init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;",
            "Landroid/icu/text/Collator;",
            ")V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    .line 177
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->collatorPrimaryOnly:Landroid/icu/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;Landroid/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;)V

    return-void
.end method


# virtual methods
.method public getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 207
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$200(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 208
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$400(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/AlphabeticIndex$Bucket;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBucketCount()I
    .locals 0

    .line 186
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$200(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    move-result p0

    return p0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->collatorPrimaryOnly:Landroid/icu/text/Collator;

    invoke-static {v0, p1, p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->access$300(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
