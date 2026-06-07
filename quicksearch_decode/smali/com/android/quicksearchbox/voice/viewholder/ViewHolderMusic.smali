.class public Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;
.super Lb/a/a/o1/d/a;
.source "ViewHolderMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;
    }
.end annotation


# instance fields
.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/widget/ImageView;

.field public o:Lb/a/a/o1/b/c;

.field public p:Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;

.field public q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/o1/d/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    const p1, 0x7f08023a

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->k:Landroid/widget/TextView;

    const p1, 0x7f080155

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->n:Landroid/widget/ImageView;

    const p1, 0x7f080252

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->g:Landroid/widget/TextView;

    const p1, 0x7f080158

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->j:Landroid/widget/TextView;

    const p1, 0x7f080153

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->h:Landroid/widget/TextView;

    const p1, 0x7f080173

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->m:Landroid/widget/ImageView;

    const p1, 0x7f080174

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->f:Landroid/view/View;

    const p1, 0x7f080154

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->e:Landroid/view/View;

    const p1, 0x7f080207

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->d:Landroid/view/View;

    const p1, 0x7f080156

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->l:Landroid/widget/TextView;

    const p1, 0x7f080157

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->i:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisanos.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisan.music.BROWSER_ARTIST_ALBUM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "artist_id"

    .line 47
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "artist"

    .line 48
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "param"

    .line 49
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 50
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisan.music.BROWSER_ALBUM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "album_id"

    .line 54
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "album_name"

    .line 55
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "artist"

    .line 56
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "param"

    .line 57
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lb/a/a/o1/b/c;I)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->p:Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 31
    invoke-interface {v0, p1, p2, v1}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;->playOrPause(Lb/a/a/o1/b/c;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/quicksearchbox/voice/model/IModel;Z)V
    .locals 7

    .line 1
    check-cast p2, Lb/a/a/o1/b/c;

    iput-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-object p1, p1, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    .line 3
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-object p2, p2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object p2, p2, Lsmartisanos/app/voiceassistant/MediaStruct;->mTitle:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 5
    iget-object p3, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget p3, p3, Lb/a/a/o1/b/c;->a:I

    if-eqz p3, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_5

    if-eq p3, v2, :cond_4

    const/4 p2, 0x3

    if-eq p3, p2, :cond_1

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->e:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->d:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->l:Landroid/widget/TextView;

    iget-object p3, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mTitle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget v2, v2, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->i:Landroid/widget/TextView;

    iget-object p3, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mTime:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget v2, v2, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lb/a/a/o1/c/d;->a(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget p2, p2, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-wide v2, p3, Lb/a/a/o1/b/c;->c:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->f:Landroid/view/View;

    iget-boolean p2, p3, Lb/a/a/o1/b/c;->d:Z

    if-eqz p2, :cond_2

    const p2, 0x7f070182

    goto :goto_1

    :cond_2
    const p2, 0x7f070181

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p3, p0, Lb/a/a/o1/d/a;->c:Landroid/content/res/Resources;

    const v0, 0x7f1000e0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 15
    iget-object p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mArtist:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lb/a/a/o1/d/a;->c:Landroid/content/res/Resources;

    const v2, 0x7f0e0001

    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 18
    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_5
    iget-object p3, p0, Lb/a/a/o1/d/a;->c:Landroid/content/res/Resources;

    const v0, 0x7f1000df

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 21
    iget-object v0, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mAlbum:Ljava/lang/String;

    .line 22
    iget-object v4, p0, Lb/a/a/o1/d/a;->c:Landroid/content/res/Resources;

    const/high16 v5, 0x7f0e0000

    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mArtist:Ljava/lang/String;

    aput-object p1, v2, v3

    .line 24
    invoke-virtual {v4, v5, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p3, v0, p1}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_6
    iget-object p2, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mTitle:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 27
    iget-object p3, p0, Lb/a/a/o1/d/a;->c:Landroid/content/res/Resources;

    const v0, 0x7f1000e3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 28
    iget-object p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mAlbum:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/o1/c/c;->a(Landroid/content/Context;)Lb/a/a/o1/c/c;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-object v3, v3, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object v3, v3, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/albumart"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->n:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v0, v1, v2}, Lb/a/a/o1/c/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->m:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-boolean p2, p2, Lb/a/a/o1/b/c;->d:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0700b0

    goto :goto_0

    :cond_0
    const p2, 0x7f0700b3

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 41
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->m:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p3, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-boolean p3, p3, Lb/a/a/o1/b/c;->d:Z

    if-eqz p3, :cond_1

    const p3, 0x7f1000e1

    goto :goto_1

    :cond_1
    const p3, 0x7f1000e2

    :goto_1
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->n:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x7f06021a

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f060219

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7
    invoke-static {v1, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const v1, 0x7f07010e

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget v1, v0, Lb/a/a/o1/b/c;->a:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-wide v1, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mArtistId:J

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mArtist:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, v0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-wide v1, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mAlbumId:J

    iget-object v3, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mAlbum:Ljava/lang/String;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mArtist:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080154

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f080173

    if-eq p1, v0, :cond_1

    const v0, 0x7f080207

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    invoke-virtual {p0, p1, v2}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(Lb/a/a/o1/b/c;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    invoke-virtual {p0, p1, v1}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->a(Lb/a/a/o1/b/c;I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->c()V

    .line 5
    invoke-static {v2, v1}, Lb/a/a/n1/d$l;->a(II)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080154

    if-eq v0, v1, :cond_0

    const v1, 0x7f080207

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->o:Lb/a/a/o1/b/c;

    iget-object v0, v0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mPath:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070110

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 8
    iget-object v2, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->q:Landroid/content/Context;

    const-string v4, "audio/*"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lsmartisanos/util/SidebarUtils;->dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnMusicClickListener(Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic;->p:Lcom/android/quicksearchbox/voice/viewholder/ViewHolderMusic$OnMusicClickListener;

    return-void
.end method
