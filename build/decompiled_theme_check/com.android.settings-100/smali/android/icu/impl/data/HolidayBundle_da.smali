.class public Landroid/icu/impl/data/HolidayBundle_da;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_da.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Armistice Day"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string/jumbo v5, "v\u00e5benhvile"

    aput-object v5, v2, v4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Ascension"

    aput-object v5, v2, v3

    const-string v5, "himmelfart"

    aput-object v5, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Boxing Day"

    aput-object v5, v2, v3

    const-string v5, "anden juledag"

    aput-object v5, v2, v4

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Christmas Eve"

    aput-object v5, v2, v3

    const-string v5, "juleaften"

    aput-object v5, v2, v4

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Easter"

    aput-object v5, v2, v3

    const-string/jumbo v5, "p\u00e5ske"

    aput-object v5, v2, v4

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Epiphany"

    aput-object v5, v2, v3

    const-string v5, "helligtrekongersdag"

    aput-object v5, v2, v4

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Good Friday"

    aput-object v5, v2, v3

    const-string v5, "langfredag"

    aput-object v5, v2, v4

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Halloween"

    aput-object v5, v2, v3

    const-string v5, "allehelgensaften"

    aput-object v5, v2, v4

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Maundy Thursday"

    aput-object v5, v2, v3

    const-string/jumbo v5, "sk\u00e6rtorsdag"

    aput-object v5, v2, v4

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Palm Sunday"

    aput-object v5, v2, v3

    const-string/jumbo v5, "palmes\u00f8ndag"

    aput-object v5, v2, v4

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Pentecost"

    aput-object v5, v2, v3

    const-string/jumbo v5, "pinse"

    aput-object v5, v2, v4

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Shrove Tuesday"

    aput-object v2, v1, v3

    const-string v2, "hvidetirsdag"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 20
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_da;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_da;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
