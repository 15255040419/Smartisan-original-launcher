.class public Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
.super Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
.source "ResourceBasedPeriodFormatterDataService.java"


# static fields
.field private static final PATH:Ljava/lang/String; = "data/"

.field private static final singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;


# instance fields
.field private availableLocales:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/duration/impl/PeriodFormatterData;",
            ">;"
        }
    .end annotation
.end field

.field private lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private lastLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    invoke-direct {v0}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;-><init>()V

    sput-object v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 41
    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "data/index.txt"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 64
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :catch_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 76
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Error reading data/index.txt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 82
    :catch_2
    throw p0
.end method

.method public static getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .locals 1

    .line 53
    sget-object v0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
    .locals 6

    const/16 v0, 0x40

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 92
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_0
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object p1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    monitor-exit p0

    return-object p1

    .line 100
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;

    if-nez v0, :cond_7

    move-object v3, p1

    .line 103
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "_"

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_2

    .line 106
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "test"

    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "test"

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v3, :cond_6

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/pfd_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    new-instance v4, Landroid/icu/impl/duration/impl/XMLRecordReader;

    invoke-direct {v4, v2}, Landroid/icu/impl/duration/impl/XMLRecordReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3, v4}, Landroid/icu/impl/duration/impl/DataRecord;->read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;

    move-result-object v3

    .line 120
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    if-eqz v3, :cond_5

    .line 131
    new-instance v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-direct {v0, p1, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;-><init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_5
    :try_start_2
    iget-object v1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close() resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 134
    :catch_1
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled encoding for resource "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_6
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration data not found for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data/"

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    :goto_1
    iput-object v0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 152
    iput-object p1, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    .line 154
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getAvailableLocales()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-object p0
.end method
