.class public Lcom/android/settingslib/utils/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/utils/IconCache;->mMap:Landroidx/collection/ArrayMap;

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/utils/IconCache;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/utils/IconCache;->mMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/utils/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/utils/IconCache;->updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method public updateIcon(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/utils/IconCache;->mMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
