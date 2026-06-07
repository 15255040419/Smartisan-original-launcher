.class public final enum Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;
.super Ljava/lang/Enum;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final enum d:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final enum e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final enum f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final enum g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final enum h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final enum i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

.field public static final synthetic j:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const-string v3, "http"

    invoke-direct {v0, v2, v1, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->c:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v2, 0x1

    const-string v3, "HTTPS"

    const-string v4, "https"

    invoke-direct {v0, v3, v2, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->d:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v3, 0x2

    const-string v4, "FILE"

    const-string v5, "file"

    invoke-direct {v0, v4, v3, v5}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v4, 0x3

    const-string v5, "CONTENT"

    const-string v6, "content"

    invoke-direct {v0, v5, v4, v6}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v5, 0x4

    const-string v6, "ASSETS"

    const-string v7, "assets"

    invoke-direct {v0, v6, v5, v7}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v6, 0x5

    const-string v7, "DRAWABLE"

    const-string v8, "drawable"

    invoke-direct {v0, v7, v6, v8}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN"

    const-string v9, ""

    invoke-direct {v0, v8, v7, v9}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    .line 2
    sget-object v8, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->c:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v8, v0, v1

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->d:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->j:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_2
    :goto_1
    sget-object p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->i:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;
    .locals 1

    .line 1
    const-class v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;
    .locals 4

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->j:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->a:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "URI [%1$s] doesn\'t have expected scheme [%2$s]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
