.class public Landroid/icu/impl/data/HolidayBundle_it;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_it.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "All Saints\' Day"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "Ognissanti"

    aput-object v5, v2, v4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Armistice Day"

    aput-object v5, v2, v3

    const-string v5, "armistizio"

    aput-object v5, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Ascension"

    aput-object v5, v2, v3

    const-string v5, "ascensione"

    aput-object v5, v2, v4

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Ash Wednesday"

    aput-object v5, v2, v3

    const-string v5, "mercoled\u00ec delle ceneri"

    aput-object v5, v2, v4

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "Boxing Day"

    aput-object v5, v2, v3

    const-string v5, "Santo Stefano"

    aput-object v5, v2, v4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Christmas"

    aput-object v6, v2, v3

    const-string v6, "natale"

    aput-object v6, v2, v4

    const/4 v6, 0x5

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Easter Sunday"

    aput-object v6, v2, v3

    const-string/jumbo v6, "pasqua"

    aput-object v6, v2, v4

    const/4 v6, 0x6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Epiphany"

    aput-object v6, v2, v3

    const-string v6, "Epifania"

    aput-object v6, v2, v4

    const/4 v6, 0x7

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Good Friday"

    aput-object v6, v2, v3

    const-string/jumbo v6, "venerd\u00ec santo"

    aput-object v6, v2, v4

    const/16 v6, 0x8

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Halloween"

    aput-object v6, v2, v3

    const-string/jumbo v6, "vigilia di Ognissanti"

    aput-object v6, v2, v4

    const/16 v6, 0x9

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Maundy Thursday"

    aput-object v6, v2, v3

    const-string v6, "gioved\u00ec santo"

    aput-object v6, v2, v4

    const/16 v6, 0xa

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "New Year\'s Day"

    aput-object v6, v2, v3

    const-string v6, "anno nuovo"

    aput-object v6, v2, v4

    const/16 v6, 0xb

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Palm Sunday"

    aput-object v6, v2, v3

    const-string v6, "domenica delle palme"

    aput-object v6, v2, v4

    const/16 v6, 0xc

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Pentecost"

    aput-object v6, v2, v3

    const-string v6, "di Pentecoste"

    aput-object v6, v2, v4

    const/16 v6, 0xd

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "Shrove Tuesday"

    aput-object v6, v2, v3

    const-string v6, "martedi grasso"

    aput-object v6, v2, v4

    const/16 v6, 0xe

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "St. Stephen\'s Day"

    aput-object v6, v2, v3

    aput-object v5, v2, v4

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Thanksgiving"

    aput-object v2, v1, v3

    const-string v2, "Giorno del Ringraziamento"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 19
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_it;->fContents:[[Ljava/lang/Object;

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

    .line 41
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_it;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
