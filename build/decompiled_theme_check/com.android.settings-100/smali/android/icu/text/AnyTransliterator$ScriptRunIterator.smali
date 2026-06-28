.class Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
.super Ljava/lang/Object;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AnyTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptRunIterator"
.end annotation


# instance fields
.field public limit:I

.field public scriptCode:I

.field public start:I

.field private text:Landroid/icu/text/Replaceable;

.field private textLimit:I

.field private textStart:I


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;II)V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    .line 338
    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    .line 339
    iput p3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    .line 340
    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    return-void
.end method


# virtual methods
.method public adjustLimit(I)V
    .locals 1

    .line 398
    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    .line 399
    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    return-void
.end method

.method public next()Z
    .locals 4

    const/4 v0, -0x1

    .line 353
    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    .line 354
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    .line 357
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_0
    :goto_0
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    .line 364
    iget-object v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    .line 365
    invoke-static {v1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_2

    .line 367
    :cond_1
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    goto :goto_0

    .line 375
    :cond_2
    :goto_1
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    if-ge v1, v2, :cond_5

    .line 376
    iget-object v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    invoke-interface {v2, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    .line 377
    invoke-static {v1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_4

    .line 379
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    if-ne v2, v0, :cond_3

    .line 380
    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_4

    goto :goto_3

    .line 385
    :cond_4
    :goto_2
    iget v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    goto :goto_1

    :cond_5
    :goto_3
    return v3
.end method
