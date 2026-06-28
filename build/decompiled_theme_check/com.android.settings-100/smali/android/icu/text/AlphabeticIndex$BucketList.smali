.class Landroid/icu/text/AlphabeticIndex$BucketList;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketList"
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
.field private final bucketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final immutableVisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;",
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    .line 1110
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/AlphabeticIndex$Bucket;

    add-int/lit8 v2, v0, 0x1

    .line 1111
    invoke-static {v1, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1402(Landroid/icu/text/AlphabeticIndex$Bucket;I)I

    move v0, v2

    goto :goto_0

    .line 1113
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 1102
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Landroid/icu/text/AlphabeticIndex$BucketList;)I
    .locals 0

    .line 1102
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .locals 0

    .line 1102
    invoke-direct {p0, p1, p2}, Landroid/icu/text/AlphabeticIndex$BucketList;->getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;
    .locals 0

    .line 1102
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;
    .locals 0

    .line 1102
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex$BucketList;->fullIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private fullIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 1145
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private getBucketCount()I
    .locals 0

    .line 1117
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private getBucketIndex(Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I
    .locals 4

    .line 1123
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v0, :cond_1

    add-int v2, v1, v0

    .line 1125
    div-int/lit8 v2, v2, 0x2

    .line 1126
    iget-object v3, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1127
    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$800(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1134
    :cond_1
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->bucketList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/AlphabeticIndex$Bucket;

    .line 1135
    invoke-static {p0}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1136
    invoke-static {p0}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$900(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object p0

    .line 1138
    :cond_2
    invoke-static {p0}, Landroid/icu/text/AlphabeticIndex$Bucket;->access$1400(Landroid/icu/text/AlphabeticIndex$Bucket;)I

    move-result p0

    return p0
.end method


# virtual methods
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

    .line 1153
    iget-object p0, p0, Landroid/icu/text/AlphabeticIndex$BucketList;->immutableVisibleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
