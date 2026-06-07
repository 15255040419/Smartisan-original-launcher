.class public Lb/a/a/o1/a/a;
.super Landroid/widget/BaseAdapter;
.source "VoiceSearchResultAdapter.java"

# interfaces
.implements Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;
.implements Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lcom/android/quicksearchbox/music/MusicServiceManager;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lb/a/a/o1/a/a;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/a/a;->b:Landroid/view/LayoutInflater;

    .line 8
    iget-object p1, p0, Lb/a/a/o1/a/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/music/MusicServiceManager;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    .line 9
    iget-object p1, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-virtual {p1, p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V

    return-void
.end method

.method public static a(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(II)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    iget-object p1, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/2addr p1, v0

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    add-int/2addr p2, p1

    :cond_3
    :goto_2
    return p2
.end method

.method public final a()V
    .locals 4

    .line 9
    iget-object v0, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 11
    iget-object v0, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/o1/b/c;

    iget-object v0, v0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    iget-object v0, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-static {v2}, Lb/a/a/o1/a/a;->a(Ljava/util/List;)[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a([JIII)V

    :cond_0
    return-void
.end method

.method public a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getApps()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/a/a/o1/b/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getYellowPages()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-static {v0}, Lb/a/a/o1/b/d;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getContacts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/a/a/o1/b/b;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getMusics()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/a/a/o1/b/c;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getResultStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/a/a;->h:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setData, isRefresh= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lb/a/a/o1/a/a;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lb/a/a/o1/b/c;)Z
    .locals 4

    .line 20
    iget-object v0, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b()Lb/a/a/h1/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/h1/b;->c()J

    move-result-wide v0

    .line 21
    iget-object p1, p1, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/quicksearchbox/voice/model/IModel;
    .locals 4

    .line 2
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4
    iget-object v2, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5
    iget-object v3, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/voice/model/IModel;

    return-object p1

    :cond_0
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_1

    .line 7
    iget-object v0, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/voice/model/IModel;

    return-object p1

    :cond_1
    sub-int/2addr p1, v1

    if-ge p1, v2, :cond_2

    .line 8
    iget-object v0, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/voice/model/IModel;

    return-object p1

    :cond_2
    sub-int/2addr p1, v2

    if-ge p1, v3, :cond_3

    .line 9
    iget-object v0, p0, Lb/a/a/o1/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/voice/model/IModel;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/o1/a/a;->getItem(I)Lcom/android/quicksearchbox/voice/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    iget-object v2, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    if-ge p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sub-int/2addr p1, v2

    if-ge p1, v1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/o1/a/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/a/a/o1/d/a;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lb/a/a/o1/a/a;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0b0062

    invoke-virtual {p2, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;

    iget-object v5, p0, Lb/a/a/o1/a/a;->a:Landroid/content/Context;

    invoke-direct {p3, v5, p2}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    invoke-virtual {p3, p0}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->setOnMusicClickListener(Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lb/a/a/o1/a/a;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0b001e

    invoke-virtual {p2, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 7
    new-instance p3, Lb/a/a/o1/d/b;

    iget-object v5, p0, Lb/a/a/o1/a/a;->a:Landroid/content/Context;

    invoke-direct {p3, v5, p2}, Lb/a/a/o1/d/b;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p2, p0, Lb/a/a/o1/a/a;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0b00be

    invoke-virtual {p2, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 9
    new-instance p3, Lb/a/a/o1/d/d;

    iget-object v5, p0, Lb/a/a/o1/a/a;->a:Landroid/content/Context;

    invoke-direct {p3, v5, p2}, Lb/a/a/o1/d/d;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p2, p0, Lb/a/a/o1/a/a;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0b002e

    invoke-virtual {p2, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 11
    new-instance p3, Lb/a/a/o1/d/c;

    iget-object v5, p0, Lb/a/a/o1/a/a;->a:Landroid/content/Context;

    invoke-direct {p3, v5, p2}, Lb/a/a/o1/d/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :goto_1
    invoke-virtual {p0, p1}, Lb/a/a/o1/a/a;->getItem(I)Lcom/android/quicksearchbox/voice/model/IModel;

    move-result-object v5

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/o1/a/a;->f:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_6

    move v4, v3

    .line 16
    :cond_6
    move-object p1, v5

    check-cast p1, Lb/a/a/o1/b/c;

    iget-object v0, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b()Lb/a/a/h1/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/o1/b/c;->a(Lb/a/a/h1/b;)V

    goto :goto_3

    .line 17
    :cond_7
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lb/a/a/o1/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_a

    :goto_2
    move v4, v3

    goto :goto_3

    .line 18
    :cond_8
    iget-object v0, p0, Lb/a/a/o1/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_a

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    goto :goto_2

    .line 19
    :cond_a
    :goto_3
    iget-object p1, p0, Lb/a/a/o1/a/a;->h:Ljava/lang/String;

    invoke-virtual {p3, p1, v5, v4}, Lb/a/a/o1/d/a;->a(Ljava/lang/String;Lcom/android/quicksearchbox/voice/model/IModel;Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onMusicServiceConnected()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/o1/a/a;->a()V

    return-void
.end method

.method public onMusicStateChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/o1/a/a;->c()V

    return-void
.end method

.method public playOrPause(Lb/a/a/o1/b/c;II)V
    .locals 4

    const/4 p3, 0x1

    if-ne p3, p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/o1/a/a;->a(Lb/a/a/o1/b/c;)Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    iget v1, p1, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-virtual {v2}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b()Lb/a/a/h1/b;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/h1/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    invoke-virtual {p1, p3}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(I)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p1, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    invoke-static {v0}, Lb/a/a/o1/a/a;->a(Ljava/util/List;)[J

    move-result-object v0

    .line 6
    iget-object v1, p0, Lb/a/a/o1/a/a;->c:Lcom/android/quicksearchbox/music/MusicServiceManager;

    iget p1, p1, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a([JIII)V

    :goto_1
    return-void
.end method
