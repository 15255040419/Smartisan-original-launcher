.class Landroid/icu/impl/URLHandler$FileURLHandler;
.super Landroid/icu/impl/URLHandler;
.source "URLHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/URLHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileURLHandler"
.end annotation


# instance fields
.field file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 157
    invoke-direct {p0}, Landroid/icu/impl/URLHandler;-><init>()V

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    iget-object p0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 164
    :cond_1
    :goto_0
    invoke-static {}, Landroid/icu/impl/URLHandler;->access$000()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file does not exist - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V
    .locals 10

    if-eqz p5, :cond_3

    const/4 v0, 0x0

    .line 180
    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_3

    .line 181
    aget-object v1, p5, v0

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_2

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/URLHandler$FileURLHandler;->process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v1}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public guide(Landroid/icu/impl/URLHandler$URLVisitor;ZZ)V
    .locals 7

    .line 171
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    const-string v5, "/"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/URLHandler$FileURLHandler;->process(Landroid/icu/impl/URLHandler$URLVisitor;ZZLjava/lang/String;[Ljava/io/File;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/URLHandler$FileURLHandler;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/icu/impl/URLHandler$URLVisitor;->visit(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
