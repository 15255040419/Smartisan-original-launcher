.class Landroid/icu/text/SourceTargetUtility;
.super Ljava/lang/Object;
.source "SourceTargetUtility.java"


# static fields
.field static NFC:Landroid/icu/text/Normalizer2;

.field static final NON_STARTERS:Landroid/icu/text/UnicodeSet;


# instance fields
.field final sourceCache:Landroid/icu/text/UnicodeSet;

.field final sourceStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final transform:Landroid/icu/text/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NON_STARTERS:Landroid/icu/text/UnicodeSet;

    .line 25
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/text/Normalizer2;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    if-eqz p2, :cond_0

    .line 59
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    .line 63
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const v2, 0x10ffff

    if-gt v1, v2, :cond_7

    .line 65
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    invoke-static {v1, v2}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    if-nez p2, :cond_2

    goto :goto_3

    .line 74
    :cond_2
    sget-object v3, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v1}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 78
    :cond_3
    invoke-interface {p1, v3}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 80
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_3

    .line 85
    :cond_5
    invoke-virtual {p2, v1}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 86
    iget-object v2, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_7
    iget-object p0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 119
    invoke-virtual {p1, p2}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 120
    new-instance p2, Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-direct {p2, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p2

    .line 121
    invoke-virtual {p3, p2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 122
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    iget-object v1, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    invoke-interface {v1, v0}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p4, v0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 125
    :cond_0
    iget-object p2, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    invoke-interface {v1, v0}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    invoke-virtual {p4, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 130
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_1

    :cond_2
    return-void
.end method
