.class public Landroid/icu/impl/locale/XCldrStub$Splitter;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Splitter"
.end annotation


# instance fields
.field pattern:Ljava/util/regex/Pattern;

.field trimResults:Z


# direct methods
.method public constructor <init>(C)V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\\E"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Splitter;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->trimResults:Z

    .line 292
    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static on(C)Landroid/icu/impl/locale/XCldrStub$Splitter;
    .locals 1

    .line 295
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$Splitter;

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XCldrStub$Splitter;-><init>(C)V

    return-object v0
.end method

.method public static on(Ljava/util/regex/Pattern;)Landroid/icu/impl/locale/XCldrStub$Splitter;
    .locals 1

    .line 298
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$Splitter;

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XCldrStub$Splitter;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public split(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Splitter;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public splitToList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-boolean p0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->trimResults:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 303
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 304
    aget-object v0, p1, p0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public trimResults()Landroid/icu/impl/locale/XCldrStub$Splitter;
    .locals 1

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Landroid/icu/impl/locale/XCldrStub$Splitter;->trimResults:Z

    return-object p0
.end method
