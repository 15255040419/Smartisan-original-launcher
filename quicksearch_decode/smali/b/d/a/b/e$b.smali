.class public Lb/d/a/b/e$b;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static synthetic b:[I


# instance fields
.field public final a:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/d/a/b/e$b;->a:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-void
.end method

.method public static synthetic a()[I
    .locals 3

    .line 1
    sget-object v0, Lb/d/a/b/e$b;->b:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->c:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->d:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sput-object v0, Lb/d/a/b/e$b;->b:[I

    return-object v0
.end method


# virtual methods
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-static {}, Lb/d/a/b/e$b;->a()[I

    move-result-object v0

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->d(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/a/b/e$b;->a:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
