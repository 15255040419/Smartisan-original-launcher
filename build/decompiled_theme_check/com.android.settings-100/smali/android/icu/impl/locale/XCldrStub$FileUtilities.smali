.class public Landroid/icu/impl/locale/XCldrStub$FileUtilities;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileUtilities"
.end annotation


# static fields
.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "utf-8"

    .line 342
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelativeFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 375
    const-class p0, Landroid/icu/impl/locale/XCldrStub$FileUtilities;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "file:"

    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 378
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "jar:file:"

    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 382
    :cond_2
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static openFile(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/BufferedReader;"
        }
    .end annotation

    .line 345
    sget-object v0, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->openFile(Ljava/lang/Class;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public static openFile(Ljava/lang/Class;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/io/BufferedReader;"
        }
    .end annotation

    const-string v0, "; relative to class: "

    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez p2, :cond_0

    .line 354
    sget-object p2, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->UTF8:Ljava/nio/charset/Charset;

    .line 356
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 357
    new-instance p2, Ljava/io/BufferedReader;

    const/high16 v1, 0x10000

    invoke-direct {p2, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    if-nez p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_1
    const-string v2, "../util/"

    .line 363
    invoke-static {p0, v2}, Landroid/icu/impl/locale/XCldrStub$FileUtilities;->getRelativeFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 364
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t open file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; in path "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    :catch_1
    new-instance p0, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
