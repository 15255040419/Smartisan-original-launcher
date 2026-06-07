.class public Lb/a/a/o1/b/c;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Lcom/android/quicksearchbox/voice/model/IModel;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Z

.field public e:Lsmartisanos/app/voiceassistant/MediaStruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/app/voiceassistant/MediaStruct;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/a/a/o1/c/d;->a:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisanos/app/voiceassistant/MediaStruct;

    .line 4
    iget v2, v1, Lsmartisanos/app/voiceassistant/MediaStruct;->mFlagType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Lb/a/a/o1/b/c;

    invoke-direct {v2}, Lb/a/a/o1/b/c;-><init>()V

    .line 6
    iput v3, v2, Lb/a/a/o1/b/c;->a:I

    .line 7
    iput-object v1, v2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    iget-object v2, v1, Lsmartisanos/app/voiceassistant/MediaStruct;->mTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 10
    new-instance v2, Lb/a/a/o1/b/c;

    invoke-direct {v2}, Lb/a/a/o1/b/c;-><init>()V

    .line 11
    iput v3, v2, Lb/a/a/o1/b/c;->b:I

    .line 12
    iput-object v1, v2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    .line 13
    iput v4, v2, Lb/a/a/o1/b/c;->a:I

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_2
    new-instance v2, Lb/a/a/o1/b/c;

    invoke-direct {v2}, Lb/a/a/o1/b/c;-><init>()V

    .line 16
    iput v4, v2, Lb/a/a/o1/b/c;->a:I

    .line 17
    iput-object v1, v2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_2
    iget-object v2, v1, Lsmartisanos/app/voiceassistant/MediaStruct;->mTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 20
    new-instance v2, Lb/a/a/o1/b/c;

    invoke-direct {v2}, Lb/a/a/o1/b/c;-><init>()V

    .line 21
    iput v3, v2, Lb/a/a/o1/b/c;->b:I

    .line 22
    iput-object v1, v2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    const/4 v4, 0x5

    .line 23
    iput v4, v2, Lb/a/a/o1/b/c;->a:I

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25
    :cond_3
    new-instance v2, Lb/a/a/o1/b/c;

    invoke-direct {v2}, Lb/a/a/o1/b/c;-><init>()V

    .line 26
    iput v4, v2, Lb/a/a/o1/b/c;->a:I

    .line 27
    iput-object v1, v2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_3
    iget-object v2, v1, Lsmartisanos/app/voiceassistant/MediaStruct;->mTitle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 30
    new-instance v2, Lb/a/a/o1/b/c;

    invoke-direct {v2}, Lb/a/a/o1/b/c;-><init>()V

    .line 31
    iput v3, v2, Lb/a/a/o1/b/c;->b:I

    .line 32
    iput-object v1, v2, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    const/4 v4, 0x4

    .line 33
    iput v4, v2, Lb/a/a/o1/b/c;->a:I

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a(Lb/a/a/h1/b;)V
    .locals 7

    .line 35
    invoke-virtual {p1}, Lb/a/a/h1/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/o1/b/c;->c:J

    .line 36
    invoke-virtual {p1}, Lb/a/a/h1/b;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 37
    iget v0, p0, Lb/a/a/o1/b/c;->a:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    const/4 p1, 0x4

    if-eq v0, p1, :cond_4

    const/4 p1, 0x5

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-wide v3, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mArtistId:J

    invoke-virtual {p1}, Lb/a/a/h1/b;->b()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lb/a/a/o1/b/c;->d:Z

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-wide v3, v0, Lsmartisanos/app/voiceassistant/MediaStruct;->mAlbumId:J

    invoke-virtual {p1}, Lb/a/a/h1/b;->a()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lb/a/a/o1/b/c;->d:Z

    goto :goto_0

    .line 40
    :cond_4
    iget-object p1, p0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    iget-object p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mId:Ljava/util/ArrayList;

    iget v0, p0, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lb/a/a/o1/b/c;->c:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lb/a/a/o1/b/c;->d:Z

    goto :goto_0

    .line 41
    :cond_6
    iput-boolean v1, p0, Lb/a/a/o1/b/c;->d:Z

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicModel [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/o1/b/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/o1/b/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/o1/b/c;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/a/a/o1/b/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", struct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/o1/b/c;->e:Lsmartisanos/app/voiceassistant/MediaStruct;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
