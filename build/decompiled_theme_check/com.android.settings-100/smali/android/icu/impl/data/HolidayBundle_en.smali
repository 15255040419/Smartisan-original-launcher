.class public Landroid/icu/impl/data/HolidayBundle_en;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    .line 28
    sput-object v1, Landroid/icu/impl/data/HolidayBundle_en;->fContents:[[Ljava/lang/Object;

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

    .line 33
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
