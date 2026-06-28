.class final Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NEXT_BITS:I = 0x6

.field private static final ROOT_BITS:I = 0x7

.field private static final SIMPLE_LENGTH:I = 0x20


# instance fields
.field private keys:[I

.field private length:I

.field private levelBitsList:I

.field private maxOffsetBits:I

.field private rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

.field private values:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1130
    const-class v0, Landroid/icu/impl/ICUResourceBundleReader;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 1140
    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    new-array v0, v0, [Ljava/lang/Object;

    .line 1141
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    const/16 v0, 0x1c

    .line 1238
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    :goto_0
    const v0, 0x7ffffff

    if-gt p1, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    .line 1241
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    goto :goto_0

    .line 1243
    :cond_0
    iget p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    add-int/lit8 p1, p1, 0x2

    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 1246
    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_2

    :cond_1
    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    add-int/lit8 p1, p1, -0x3

    or-int/lit8 p1, p1, 0x30

    .line 1248
    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_2

    .line 1250
    :cond_2
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 p1, p1, -0x7

    const/4 v0, 0x4

    :goto_1
    const/4 v1, 0x6

    if-gt p1, v1, :cond_3

    .line 1255
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    goto :goto_2

    :cond_3
    const/16 v2, 0x9

    if-ge p1, v2, :cond_4

    .line 1258
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 p1, p1, -0x3

    or-int/lit8 p1, p1, 0x30

    shl-int/2addr p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    :goto_2
    return-void

    .line 1261
    :cond_4
    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    add-int/lit8 p1, p1, -0x6

    add-int/lit8 v0, v0, 0x4

    goto :goto_1
.end method

.method static synthetic access$2000([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1130
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(I)Z
    .locals 0

    .line 1130
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->storeDirectly(I)Z

    move-result p0

    return p0
.end method

.method private findSimple(I)I
    .locals 4

    .line 1292
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    const/4 v1, 0x0

    :goto_0
    sub-int v2, v0, v1

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    add-int v2, v1, v0

    .line 1294
    div-int/lit8 v2, v2, 0x2

    .line 1295
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1303
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    not-int p0, v1

    return p0

    :cond_2
    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    not-int p0, v1

    return p0
.end method

.method private makeKey(I)I
    .locals 2

    .line 1281
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1286
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->access$2200(I)I

    move-result p1

    iget p0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->maxOffsetBits:I

    shl-int p0, v0, p0

    or-int/2addr p0, p1

    return p0
.end method

.method private static final putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .line 1158
    aget-object p3, p0, p1

    .line 1159
    instance-of v0, p3, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    return-object p3

    .line 1167
    :cond_0
    check-cast p3, Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    return-object p3

    .line 1171
    :cond_1
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p3, p2

    goto :goto_0

    .line 1172
    :cond_2
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    aput-object p3, p0, p1

    return-object p2
.end method

.method private static storeDirectly(I)Z
    .locals 1

    const/16 v0, 0x18

    if-lt p0, v0, :cond_1

    .line 1153
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method declared-synchronized get(I)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 1321
    :try_start_0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1322
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1324
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1326
    :cond_0
    monitor-exit p0

    return-object v1

    .line 1329
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    .line 1331
    monitor-exit p0

    return-object v1

    .line 1334
    :cond_2
    :goto_0
    :try_start_2
    instance-of v0, p1, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    .line 1335
    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1337
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    .line 1341
    :try_start_0
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ltz v0, :cond_5

    .line 1342
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->findSimple(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1344
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    invoke-static {p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->putIfCleared([Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1345
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    not-int v0, v0

    .line 1347
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    if-ge v0, v1, :cond_1

    .line 1348
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1349
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    iget v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1351
    :cond_1
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    .line 1352
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aput p1, v1, v0

    .line 1353
    iget-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    invoke-static {p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->storeDirectly(I)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p3, p2

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    aput-object p3, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    monitor-exit p0

    return-object p2

    .line 1357
    :cond_3
    :try_start_2
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->levelBitsList:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;-><init>(II)V

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_4

    .line 1359
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result v4

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-virtual {v1, v4, v5, v3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1361
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->keys:[I

    .line 1362
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->values:[Ljava/lang/Object;

    const/4 v0, -0x1

    .line 1363
    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->length:I

    .line 1366
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->rootLevel:Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache;->makeKey(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$ResourceCache$Level;->putIfAbsent(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
