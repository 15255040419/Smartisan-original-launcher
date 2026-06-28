.class Landroid/icu/impl/TextTrieMap$LongestMatchHandler;
.super Ljava/lang/Object;
.source "TextTrieMap.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongestMatchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private length:I

.field private matches:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TextTrieMap$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchLength()I
    .locals 0

    .line 298
    iget p0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    return p0
.end method

.method public getMatches()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    return-object p0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "TV;>;)Z"
        }
    .end annotation

    .line 286
    iget v0, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    if-le p1, v0, :cond_0

    .line 287
    iput p1, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->length:I

    .line 288
    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->matches:Ljava/util/Iterator;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
