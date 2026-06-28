.class final Lcom/google/common/base/CharMatcher$BitSetMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitSetMatcher"
.end annotation


# instance fields
.field private final table:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Ljava/util/BitSet;Ljava/lang/String;)V
    .locals 1

    .line 1168
    invoke-direct {p0, p2}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x40

    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1170
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/BitSet;

    .line 1173
    :cond_0
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$BitSetMatcher;->table:Ljava/util/BitSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/BitSet;Ljava/lang/String;Lcom/google/common/base/CharMatcher$1;)V
    .locals 0

    .line 1163
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/CharMatcher$BitSetMatcher;-><init>(Ljava/util/BitSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 0

    .line 1178
    iget-object p0, p0, Lcom/google/common/base/CharMatcher$BitSetMatcher;->table:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 0

    .line 1183
    iget-object p0, p0, Lcom/google/common/base/CharMatcher$BitSetMatcher;->table:Ljava/util/BitSet;

    invoke-virtual {p1, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method
