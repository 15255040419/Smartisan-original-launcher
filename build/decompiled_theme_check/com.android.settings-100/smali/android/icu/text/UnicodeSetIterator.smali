.class public Landroid/icu/text/UnicodeSetIterator;
.super Ljava/lang/Object;
.source "UnicodeSetIterator.java"


# static fields
.field public static IS_STRING:I = -0x1


# instance fields
.field public codepoint:I

.field public codepointEnd:I

.field protected endElement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private endRange:I

.field protected nextElement:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private range:I

.field private set:Landroid/icu/text/UnicodeSet;

.field public string:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    .line 226
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 88
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    .line 226
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 79
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method


# virtual methods
.method public getSet()Landroid/icu/text/UnicodeSet;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object p0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 216
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v0, v1, :cond_0

    .line 217
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    iget-object p0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    return-object p0
.end method

.method protected loadRange(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 266
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result p1

    iput p1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    return-void
.end method

.method public next()Z
    .locals 3

    .line 111
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 112
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    return v2

    .line 115
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v2

    .line 116
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    .line 117
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    return v2

    .line 123
    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_2
    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    :cond_3
    return v2
.end method

.method public nextRange()Z
    .locals 3

    .line 154
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 155
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    .line 156
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    add-int/2addr v1, v2

    .line 157
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    return v2

    .line 160
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v2

    .line 161
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    .line 162
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    .line 163
    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    add-int/2addr v0, v2

    .line 164
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    return v2

    .line 170
    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 173
    :cond_2
    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    :cond_3
    return v2
.end method

.method public reset()V
    .locals 2

    .line 196
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    const/4 v1, -0x1

    .line 198
    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    .line 199
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 200
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ltz v0, :cond_0

    .line 201
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    :cond_0
    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 204
    iget-object v1, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    iget-object v1, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    iget-object v1, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 206
    iget-object v1, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    :cond_1
    return-void
.end method

.method public reset(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 188
    iput-object p1, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    .line 189
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSetIterator;->reset()V

    return-void
.end method
