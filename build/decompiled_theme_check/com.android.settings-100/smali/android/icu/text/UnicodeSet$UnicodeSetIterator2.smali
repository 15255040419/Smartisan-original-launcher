.class Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeSetIterator2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buffer:[C

.field private current:I

.field private item:I

.field private len:I

.field private limit:I

.field private sourceList:[I

.field private sourceStrings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 2

    .line 4237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4239
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->access$400(Landroid/icu/text/UnicodeSet;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    .line 4240
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lez v0, :cond_0

    .line 4241
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    .line 4242
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->access$500(Landroid/icu/text/UnicodeSet;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    .line 4243
    iget-object p1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, p1, v0

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4244
    iget v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget p1, p1, v0

    iput p1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    goto :goto_0

    .line 4246
    :cond_0
    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 4247
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 4256
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 4224
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .locals 4

    .line 4264
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_0

    .line 4265
    iget-object p0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4267
    :cond_0
    iget v1, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4269
    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    if-lt v2, v3, :cond_2

    .line 4270
    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    iget v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lt v2, v3, :cond_1

    .line 4271
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 4272
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 4274
    iput v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v2, v0, v2

    iput v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4275
    iget v2, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    :cond_2
    :goto_0
    const v0, 0xffff

    if-gt v1, v0, :cond_3

    int-to-char p0, v1

    .line 4280
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4284
    :cond_3
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    if-nez v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 4285
    iput-object v0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    :cond_4
    const/high16 v0, 0x10000

    sub-int/2addr v1, v0

    .line 4289
    iget-object p0, p0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    const/4 v0, 0x0

    ushr-int/lit8 v2, v1, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v0

    and-int/lit16 v0, v1, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    const/4 v1, 0x1

    .line 4290
    aput-char v0, p0, v1

    .line 4291
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 4299
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
