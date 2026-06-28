.class public Lcom/android/settingslib/drawer/DashboardCategory;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DashboardCategory"

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public key:Ljava/lang/String;

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public priority:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DashboardCategory"

    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/DashboardCategory;->DEBUG:Z

    .line 197
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/DashboardCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/DashboardCategory;->TILE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/DashboardCategory;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 60
    iget-object v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 61
    iget v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    iput v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    .line 62
    iget-object p1, p1, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 63
    iget-object v1, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$sortTiles$0(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 3

    .line 139
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 143
    iget p2, p2, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget p1, p1, Lcom/android/settingslib/drawer/Tile;->priority:I

    sub-int/2addr p2, p1

    if-eqz p2, :cond_0

    return p2

    :cond_0
    if-eqz v2, :cond_2

    .line 149
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 152
    :cond_1
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method


# virtual methods
.method public declared-synchronized addTile(ILcom/android/settingslib/drawer/Tile;)V
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTile(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsComponent(Landroid/content/ComponentName;)Z
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 112
    iget-object v1, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-boolean v0, Lcom/android/settingslib/drawer/DashboardCategory;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DashboardCategory"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "contains component"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    .line 117
    monitor-exit p0

    return p1

    .line 120
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/settingslib/drawer/DashboardCategory;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DashboardCategory"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not contain component"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 p1, 0x0

    .line 123
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTile(I)Lcom/android/settingslib/drawer/Tile;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/Tile;

    return-object p0
.end method

.method public declared-synchronized getTiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTilesCount()I
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 181
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    sget-object v2, Lcom/android/settingslib/drawer/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 189
    iget-object v3, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized removeTile(I)V
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTile(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sortTiles()V
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    sget-object v0, Lcom/android/settingslib/drawer/DashboardCategory;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public declared-synchronized sortTiles(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    new-instance v1, Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;

    invoke-direct {v1, p1}, Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 176
    invoke-virtual {v2, p1, p2}, Lcom/android/settingslib/drawer/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
