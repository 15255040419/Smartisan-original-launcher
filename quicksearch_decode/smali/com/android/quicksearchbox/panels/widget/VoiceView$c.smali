.class public Lcom/android/quicksearchbox/panels/widget/VoiceView$c;
.super Landroid/os/Handler;
.source "VoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/panels/widget/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/panels/widget/VoiceView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;Lcom/android/quicksearchbox/panels/widget/VoiceView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;-><init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V

    :cond_0
    return-void
.end method

.method public final a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;->onVoiceCompleted(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->g(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a()V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lsmartisanos/app/voiceassistant/ParcelableObject;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V

    goto :goto_1

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1, v3}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1, v3}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->e(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Landroid/os/Vibrator;

    move-result-object p1

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->f(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1, v2, v2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Lcom/android/quicksearchbox/panels/widget/VoiceView;ZZ)V

    goto :goto_1

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/o1/c/a;->c(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;->a:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;->onVoiceStart()V

    :cond_7
    :goto_1
    return-void
.end method
