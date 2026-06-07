.class public Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;
.super Lcom/android/quicksearchbox/ui/BaseSuggestionView;
.source "AppstoreSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;,
        Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;,
        Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$d;,
        Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;
    }
.end annotation


# static fields
.field public static final v:Ljava/lang/Long;


# instance fields
.field public g:I

.field public h:Landroid/widget/TextView;

.field public i:Landroid/view/View;

.field public j:Lsmartisan/widget/DownloadProgressView;

.field public k:Landroid/app/Dialog;

.field public l:I

.field public m:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;

.field public n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

.field public o:J

.field public p:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

.field public q:Lcom/android/quicksearchbox/ui/AsyncIcon;

.field public r:Landroid/app/DownloadManager;

.field public s:Landroid/content/res/ColorStateList;

.field public t:I

.field public u:Landroid/database/ContentObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->v:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g:I

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 12
    new-instance p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->u:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 8
    new-instance p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->u:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 4
    new-instance p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->u:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    return p1
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 45
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 46
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v4, -0xbdbdbe

    .line 47
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 48
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 50
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 53
    invoke-virtual {v3, v0, p1, p1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 54
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 55
    invoke-virtual {v3, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Ljava/lang/String;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Ljava/lang/String;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->p:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    return-object p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g:I

    return p1
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->p:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x3f

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "&"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 9
    array-length v0, p0

    if-ge v0, v2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    array-length v0, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v5, p0, v4

    const-string v6, "="

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    array-length v6, v5

    if-ge v6, v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    aget-object v6, v5, v3

    const-string v7, "package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    aget-object p0, v5, v2

    return-object p0

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->e()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    return p0
.end method

.method public static synthetic f(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    return-object p0
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .line 14
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 15
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 16
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 17
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    if-ne v0, p1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->v:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;
    .locals 14

    .line 18
    new-instance v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;)V

    .line 19
    iput-object p1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    .line 20
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/16 v2, 0x1f

    .line 21
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 22
    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->r:Landroid/app/DownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 24
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "uri"

    .line 25
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {v3}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_3

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    const-string p1, "total_size"

    .line 31
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string p1, "bytes_so_far"

    .line 32
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v2, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/16 v12, 0x0

    if-lez p1, :cond_6

    cmp-long p1, v6, v8

    if-lez p1, :cond_6

    .line 33
    new-instance p1, Ljava/math/BigDecimal;

    long-to-double v6, v6

    long-to-double v2, v2

    div-double/2addr v6, v2

    mul-double/2addr v6, v10

    invoke-direct {p1, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x4

    .line 34
    invoke-virtual {p1, v5, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v2, v12

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    cmpl-double p1, v2, v10

    if-lez p1, :cond_5

    move-wide v12, v10

    goto :goto_2

    :cond_5
    move-wide v12, v2

    :cond_6
    :goto_2
    const-string p1, "_id"

    .line 35
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->a:J

    double-to-int p1, v12

    .line 36
    iput p1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->e:I

    const-string p1, "status"

    .line 37
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 38
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_7
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "QSB.ASV"

    const-string v3, "AppstoreSuggestionView, updateAppData"

    .line 40
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 41
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 42
    throw p1

    :cond_8
    :goto_5
    return-object v0
.end method

.method public final a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v0, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find download info for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v0, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.ASV"

    invoke-static {v0, p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget v0, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->d:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(I)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->m:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->m:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->m:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;

    invoke-virtual {v1, v0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a(ILcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->m:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    return v0
.end method

.method public final b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->r:Landroid/app/DownloadManager;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->r:Landroid/app/DownloadManager;

    :cond_0
    return-void
.end method

.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->g:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->h:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->f:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->q:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "default_id"

    invoke-virtual {p1, v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quicksearchbox/SearchActivity;

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->h:Ljava/lang/String;

    invoke-static {p1}, Lb/a/a/n1/n;->b(Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/quicksearchbox/ui/IBaseSuggestionView;->cutStringForHeavyWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Lb/a/a/n1/o;

    invoke-direct {v0, p1}, Lb/a/a/n1/o;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f05012e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lb/a/a/n1/o;->b(Ljava/lang/String;I)Lb/a/a/n1/o;

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0500ec

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lb/a/a/n1/o;->b(Ljava/lang/String;I)Lb/a/a/n1/o;

    .line 23
    :goto_1
    invoke-virtual {v0}, Lb/a/a/n1/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 25
    :goto_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/p;->a(Landroid/content/Context;)Lb/a/a/n1/p;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object p2, p2, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0}, Lb/a/a/n1/p;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 26
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->p:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 28
    :cond_5
    new-instance p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    iget-object p2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object p2, p2, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->p:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    .line 29
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->p:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final c()Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v2, v2, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public final d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v0, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x10200000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    const v1, 0x7f0702a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->t:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    return-void
.end method

.method public final e()V
    .locals 6

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->d()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.search.click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    const-string v3, "Url"

    .line 9
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->b:Ljava/lang/String;

    const-string v3, "AppName"

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->f:Ljava/lang/String;

    const-string v2, "params"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-object v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->h:Ljava/lang/String;

    const-string v2, "PackageName"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.smartisanos.appstore"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.appstore.INSTALL_APPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v2, :cond_2

    .line 16
    iput v3, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 17
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    iget v3, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    invoke-virtual {v0, v3}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 18
    invoke-static {}, Lsmartisanos/api/DownloadManagerSmt;->getInstance()Lsmartisanos/api/DownloadManagerSmt;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->r:Landroid/app/DownloadManager;

    new-array v2, v2, [J

    iget-object v4, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-wide v4, v4, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->a:J

    aput-wide v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lsmartisanos/api/DownloadManagerSmt;->resumeDownload(Landroid/app/DownloadManager;[J)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 19
    iput v2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    iget v3, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    invoke-virtual {v0, v3}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 21
    invoke-static {}, Lsmartisanos/api/DownloadManagerSmt;->getInstance()Lsmartisanos/api/DownloadManagerSmt;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->r:Landroid/app/DownloadManager;

    new-array v2, v2, [J

    iget-object v4, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-wide v4, v4, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->a:J

    aput-wide v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lsmartisanos/api/DownloadManagerSmt;->pauseDownload(Landroid/app/DownloadManager;[J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->k:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100101

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100033

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100034

    new-instance v2, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$b;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$b;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100032

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->k:Landroid/app/Dialog;

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->k:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public filterIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsmartisanos/util/NameAvatarController;->drawableToBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, 0x417ae148    # 15.68f

    .line 2
    invoke-static {v0, v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object p1
.end method

.method public getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070367

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->u:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->l:I

    if-gez v0, :cond_0

    const-string p1, "QSB.ASV"

    const-string v0, "View state should be init before click"

    .line 2
    invoke-static {p1, v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->o:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 5
    :cond_1
    iput-wide v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->o:J

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080047

    if-eq p1, v0, :cond_3

    const v0, 0x7f0800c1

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->e()V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->n:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget p1, p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->d:I

    if-nez p1, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quicksearchbox/SearchActivity;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lb/a/a/n1/d$e;->a(I)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "A170019"

    .line 13
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 14
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/h0;->d(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->f()V

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->e()V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne p1, v1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->i:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->i:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->i:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->u:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    const v0, 0x7f080047

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    const v0, 0x7f08023c

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->i:Landroid/view/View;

    const v0, 0x7f0800c1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/DownloadProgressView;

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/android/quicksearchbox/ui/AsyncIcon;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->c:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/ui/AsyncIcon;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->q:Lcom/android/quicksearchbox/ui/AsyncIcon;

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->q:Lcom/android/quicksearchbox/ui/AsyncIcon;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/ui/AsyncIcon;->a(Lcom/android/quicksearchbox/ui/AsyncIcon$Callback;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->s:Landroid/content/res/ColorStateList;

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->t:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080233

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080240

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070479

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/BaseSuggestionView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    const v1, 0x7f05012d

    invoke-virtual {v0, v1}, Lsmartisan/widget/DownloadProgressView;->setInnerBackRingColor(I)V

    .line 22
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v1}, Lsmartisan/widget/DownloadProgressView;->setInnerForeRingColor(I)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->j:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    return-void
.end method
