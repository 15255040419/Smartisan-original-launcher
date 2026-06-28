.class Landroid/icu/text/ListFormatter$FormattedListBuilder;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattedListBuilder"
.end annotation


# instance fields
.field private current:Ljava/lang/StringBuilder;

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 260
    :goto_0
    iput p1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    return-void
.end method

.method private offsetRecorded()Z
    .locals 0

    .line 296
    iget p0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .locals 5

    const/4 v0, 0x2

    if-nez p3, :cond_1

    .line 268
    invoke-direct {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offsetRecorded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v0, [I

    .line 269
    :goto_1
    iget-object v2, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 270
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v0, v4

    .line 269
    invoke-static {p1, v2, v1, v0}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    .line 272
    aget p2, v1, v3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    aget p2, v1, v4

    if-eq p2, v0, :cond_3

    if-eqz p3, :cond_2

    .line 277
    aget p1, v1, v4

    iput p1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    goto :goto_2

    .line 279
    :cond_2
    iget p1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    aget p2, v1, v3

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    goto :goto_2

    .line 273
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "{0} or {1} missing from pattern "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public getOffset()I
    .locals 0

    .line 292
    iget p0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
