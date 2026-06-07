.class public final Lb/a/a/o1/c/d$a;
.super Ljava/lang/Object;
.source "VoiceUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/o1/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lsmartisanos/app/voiceassistant/MediaStruct;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsmartisanos/app/voiceassistant/MediaStruct;Lsmartisanos/app/voiceassistant/MediaStruct;)I
    .locals 0

    .line 1
    iget p1, p1, Lsmartisanos/app/voiceassistant/MediaStruct;->mFlagType:I

    iget p2, p2, Lsmartisanos/app/voiceassistant/MediaStruct;->mFlagType:I

    if-le p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lsmartisanos/app/voiceassistant/MediaStruct;

    check-cast p2, Lsmartisanos/app/voiceassistant/MediaStruct;

    invoke-virtual {p0, p1, p2}, Lb/a/a/o1/c/d$a;->a(Lsmartisanos/app/voiceassistant/MediaStruct;Lsmartisanos/app/voiceassistant/MediaStruct;)I

    move-result p1

    return p1
.end method
