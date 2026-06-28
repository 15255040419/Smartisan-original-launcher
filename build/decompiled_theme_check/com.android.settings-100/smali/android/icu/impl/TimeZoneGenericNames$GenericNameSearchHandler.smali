.class Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericNameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _types:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)V"
        }
    .end annotation

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public getMatches()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    .line 676
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    return-object p0
.end method

.method public getMaxMatchLen()I
    .locals 0

    .line 684
    iget p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    return p0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;)Z"
        }
    .end annotation

    .line 654
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 655
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    .line 656
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 659
    :cond_1
    new-instance v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p1, v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/impl/TimeZoneGenericNames$1;)V

    .line 660
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 661
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 663
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 664
    iget v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    if-le p1, v0, :cond_0

    .line 665
    iput p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public resetResults()V
    .locals 1

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 692
    iput v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    return-void
.end method
