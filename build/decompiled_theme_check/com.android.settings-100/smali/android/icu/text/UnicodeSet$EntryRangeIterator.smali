.class Landroid/icu/text/UnicodeSet$EntryRangeIterator;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryRangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/text/UnicodeSet$EntryRange;",
        ">;"
    }
.end annotation


# instance fields
.field pos:I

.field result:Landroid/icu/text/UnicodeSet$EntryRange;

.field final synthetic this$0:Landroid/icu/text/UnicodeSet;


# direct methods
.method private constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 4187
    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4189
    new-instance p1, Landroid/icu/text/UnicodeSet$EntryRange;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet$EntryRange;-><init>()V

    iput-object p1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$1;)V
    .locals 0

    .line 4187
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 4193
    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object p0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {p0}, Landroid/icu/text/UnicodeSet;->access$400(Landroid/icu/text/UnicodeSet;)I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Landroid/icu/text/UnicodeSet$EntryRange;
    .locals 4

    .line 4197
    iget v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->access$400(Landroid/icu/text/UnicodeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 4198
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->access$500(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepoint:I

    .line 4199
    iget-object v0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->this$0:Landroid/icu/text/UnicodeSet;

    invoke-static {v1}, Landroid/icu/text/UnicodeSet;->access$500(Landroid/icu/text/UnicodeSet;)[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->pos:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/icu/text/UnicodeSet$EntryRange;->codepointEnd:I

    .line 4203
    iget-object p0, p0, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->result:Landroid/icu/text/UnicodeSet$EntryRange;

    return-object p0

    .line 4201
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 4187
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet$EntryRangeIterator;->next()Landroid/icu/text/UnicodeSet$EntryRange;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 4207
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
