.class public Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;
.super Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback$Stub;
.source "VoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/panels/widget/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IVoiceAssistantCallbackImpl"
.end annotation


# instance fields
.field public mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quicksearchbox/panels/widget/VoiceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;->mViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBuffer([B)V
    .locals 0

    return-void
.end method

.method public onError(IIZ)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recordError type= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isToast= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QSB.VoiceView"

    invoke-static {p2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/panels/widget/VoiceView;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    move-result-object p2

    new-instance v0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl$a;-><init>(Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLocalResult(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showResult, isRefresh= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getMusics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getContacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; resultStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ParcelableObject;->getResultStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.VoiceView"

    .line 4
    invoke-static {v1, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/VoiceView;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 10
    iput v2, v1, Landroid/os/Message;->what:I

    .line 11
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 13
    invoke-static {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRecordEnd()V
    .locals 0

    return-void
.end method

.method public onRecordStart()V
    .locals 0

    return-void
.end method

.method public onResultRecived(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public onVolumeUpdate(I)V
    .locals 0

    return-void
.end method
