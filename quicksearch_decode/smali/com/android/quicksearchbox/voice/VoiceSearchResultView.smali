.class public Lcom/android/quicksearchbox/voice/VoiceSearchResultView;
.super Landroid/widget/FrameLayout;
.source "VoiceSearchResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/ListView;

.field public g:Lb/a/a/o1/a/a;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->h:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->c()V

    return-void
.end method

.method public static a(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z
    .locals 0

    .line 14
    invoke-virtual {p0}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getApps()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z
    .locals 0

    .line 5
    invoke-virtual {p0}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getContacts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z
    .locals 0

    .line 15
    invoke-virtual {p0}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getMusics()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getYellowPages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->c(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->d(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    invoke-virtual {v0}, Lb/a/a/o1/a/a;->b()V

    return-void
.end method

.method public a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->h:Z

    .line 3
    invoke-static {p1}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->e(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    invoke-virtual {v1, p1, p2}, Lb/a/a/o1/a/a;->a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V

    .line 9
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->c(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->d(Lsmartisanos/app/voiceassistant/ParcelableObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_3
    invoke-static {p0}, Lb/a/a/o1/c/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->h:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 3
    invoke-static {p0}, Lb/a/a/o1/c/a;->a(Landroid/view/View;)V

    .line 4
    new-instance v0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView$a;-><init>(Lcom/android/quicksearchbox/voice/VoiceSearchResultView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ba

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800ec

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a:Landroid/view/View;

    const v1, 0x7f0800ef

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b:Landroid/view/View;

    const v1, 0x7f0800ed

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->c:Landroid/view/View;

    const v1, 0x7f0800c7

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->d:Landroid/view/View;

    const v1, 0x7f08018b

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->e:Landroid/view/View;

    const v1, 0x7f080136

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->f:Landroid/widget/ListView;

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v0, Lb/a/a/o1/a/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/o1/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, v2, v0}, Lb/a/a/o1/a/a;->a(II)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    .line 6
    invoke-virtual {v1, v0, v0}, Lb/a/a/o1/a/a;->a(II)I

    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 8
    :pswitch_3
    iget-object p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->g:Lb/a/a/o1/a/a;

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2, v0}, Lb/a/a/o1/a/a;->a(II)I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800ec
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget-boolean p1, p0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->h:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
